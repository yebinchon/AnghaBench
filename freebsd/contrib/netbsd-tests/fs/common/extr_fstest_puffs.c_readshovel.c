
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct putter_hdr {int pth_framelen; } ;
struct puffstestargs {int pta_servfd; int pta_rumpfd; int * pta_vn_toserv_ops; int * pta_vfs_toserv_ops; } ;
struct puffs_req {size_t preq_optype; int preq_opclass; } ;
typedef int ssize_t ;


 int BUFSIZE ;
 scalar_t__ PUFFSOP_OPCLASS (int ) ;
 scalar_t__ PUFFSOP_VFS ;
 scalar_t__ PUFFSOP_VN ;
 size_t PUFFS_VFS_MAX ;
 size_t PUFFS_VN_MAX ;
 int abort () ;
 int assert (int) ;
 int errno ;
 int fprintf (int ,char*,int,int ) ;
 int mayquit ;
 int rump_pub_lwproc_newlwp (int) ;
 int rump_sys_read (int,char*,int) ;
 int stderr ;
 int xwrite (int,char*,int) ;

__attribute__((used)) static void *
readshovel(void *arg)
{
 struct putter_hdr *phdr;
 struct puffs_req *preq;
 struct puffstestargs *args = arg;
 char buf[BUFSIZE];
 ssize_t n;
 int comfd, puffsfd;

 comfd = args->pta_servfd;
 puffsfd = args->pta_rumpfd;

 phdr = (void *)buf;
 preq = (void *)buf;

 rump_pub_lwproc_newlwp(1);

 for (;;) {
  n = rump_sys_read(puffsfd, buf, sizeof(*phdr));
  if (n <= 0) {
   fprintf(stderr, "readshovel r1 %zd / %d\n", n, errno);
   break;
  }

  assert(phdr->pth_framelen < BUFSIZE);
  n = rump_sys_read(puffsfd, buf+sizeof(*phdr),
      phdr->pth_framelen - sizeof(*phdr));
  if (n <= 0) {
   fprintf(stderr, "readshovel r2 %zd / %d\n", n, errno);
   break;
  }


  if (PUFFSOP_OPCLASS(preq->preq_opclass) == PUFFSOP_VFS) {
   assert(preq->preq_optype < PUFFS_VFS_MAX);
   args->pta_vfs_toserv_ops[preq->preq_optype]++;
  } else if (PUFFSOP_OPCLASS(preq->preq_opclass) == PUFFSOP_VN) {
   assert(preq->preq_optype < PUFFS_VN_MAX);
   args->pta_vn_toserv_ops[preq->preq_optype]++;
  }

  n = phdr->pth_framelen;
  if (xwrite(comfd, buf, n) != n) {
   fprintf(stderr, "readshovel write %zd / %d\n", n, errno);
   break;
  }
 }

 if (n != 0 && mayquit == 0)
  abort();
 return ((void*)0);
}
