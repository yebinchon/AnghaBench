
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int t_dev; } ;
struct ptsstat {int devname; int dev; void* fs_typedep; } ;
struct filestat {int devname; int dev; void* fs_typedep; } ;
typedef struct ptsstat kvm_t ;


 int _POSIX2_LINE_MAX ;
 int assert (struct ptsstat*) ;
 int bzero (struct ptsstat*,int) ;
 int dev2udev (struct ptsstat*,int ) ;
 int kdevtoname (struct ptsstat*,int ,int ) ;
 int kvm_read_all (struct ptsstat*,unsigned long,struct tty*,int) ;
 int snprintf (char*,int ,char*) ;
 int warnx (char*,void*) ;

__attribute__((used)) static int
procstat_get_pts_info_kvm(kvm_t *kd, struct filestat *fst,
    struct ptsstat *pts, char *errbuf)
{
 struct tty tty;
 void *ttyp;

 assert(kd);
 assert(pts);
 assert(fst);
 bzero(pts, sizeof(*pts));
 ttyp = fst->fs_typedep;
 if (ttyp == ((void*)0))
  goto fail;
 if (!kvm_read_all(kd, (unsigned long)ttyp, &tty, sizeof(struct tty))) {
  warnx("can't read tty at %p", (void *)ttyp);
  goto fail;
 }
 pts->dev = dev2udev(kd, tty.t_dev);
 (void)kdevtoname(kd, tty.t_dev, pts->devname);
 return (0);

fail:
 if (errbuf != ((void*)0))
  snprintf(errbuf, _POSIX2_LINE_MAX, "error");
 return (1);
}
