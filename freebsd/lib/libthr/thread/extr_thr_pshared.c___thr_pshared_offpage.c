
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pthread {int dummy; } ;


 void* MAP_FAILED ;
 int MAP_SHARED ;
 int PAGE_SIZE ;
 int PROT_READ ;
 int PROT_WRITE ;
 int UMTX_OP_SHM ;
 int UMTX_SHM_CREAT ;
 int UMTX_SHM_LOOKUP ;
 struct pthread* _get_curthread () ;
 int _umtx_op (int *,int ,int ,void*,int *) ;
 int close (int) ;
 void* mmap (int *,int ,int,int ,int,int ) ;
 int pshared_clean (void*,void*) ;
 int pshared_insert (void*,void**) ;
 void* pshared_lookup (void*) ;
 int pshared_rlock (struct pthread*) ;
 int pshared_unlock (struct pthread*) ;
 int pshared_wlock (struct pthread*) ;

void *
__thr_pshared_offpage(void *key, int doalloc)
{
 struct pthread *curthread;
 void *res;
 int fd, ins_done;

 curthread = _get_curthread();
 pshared_rlock(curthread);
 res = pshared_lookup(key);
 pshared_unlock(curthread);
 if (res != ((void*)0))
  return (res);
 fd = _umtx_op(((void*)0), UMTX_OP_SHM, doalloc ? UMTX_SHM_CREAT :
     UMTX_SHM_LOOKUP, key, ((void*)0));
 if (fd == -1)
  return (((void*)0));
 res = mmap(((void*)0), PAGE_SIZE, PROT_READ | PROT_WRITE, MAP_SHARED, fd, 0);
 close(fd);
 if (res == MAP_FAILED)
  return (((void*)0));
 pshared_wlock(curthread);
 ins_done = pshared_insert(key, &res);
 pshared_unlock(curthread);
 if (!ins_done) {
  pshared_clean(key, res);
  res = ((void*)0);
 }
 return (res);
}
