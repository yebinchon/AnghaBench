
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsoptlist {int dummy; } ;
struct prison {int pr_mtx; } ;
struct linux_prison {char* pr_osname; char* pr_osrelease; int pr_oss_version; } ;
typedef int i ;


 int ENOENT ;
 int JAIL_SYS_INHERIT ;
 int JAIL_SYS_NEW ;
 struct linux_prison* linux_find_prison (struct prison*,struct prison**) ;
 int mtx_unlock (int *) ;
 int vfs_setopt (struct vfsoptlist*,char*,int*,int) ;
 int vfs_setopts (struct vfsoptlist*,char*,char*) ;

__attribute__((used)) static int
linux_prison_get(void *obj, void *data)
{
 struct linux_prison *lpr;
 struct prison *ppr;
 struct prison *pr = obj;
 struct vfsoptlist *opts = data;
 int error, i;

 static int version0;


 lpr = linux_find_prison(pr, &ppr);
 i = (ppr == pr) ? JAIL_SYS_NEW : JAIL_SYS_INHERIT;
 error = vfs_setopt(opts, "linux", &i, sizeof(i));
 if (error != 0 && error != ENOENT)
  goto done;
 if (i) {
  error = vfs_setopts(opts, "linux.osname", lpr->pr_osname);
  if (error != 0 && error != ENOENT)
   goto done;
  error = vfs_setopts(opts, "linux.osrelease", lpr->pr_osrelease);
  if (error != 0 && error != ENOENT)
   goto done;
  error = vfs_setopt(opts, "linux.oss_version",
      &lpr->pr_oss_version, sizeof(lpr->pr_oss_version));
  if (error != 0 && error != ENOENT)
   goto done;
 } else {




  error = vfs_setopts(opts, "linux.osname", "");
  if (error != 0 && error != ENOENT)
   goto done;
  error = vfs_setopts(opts, "linux.osrelease", "");
  if (error != 0 && error != ENOENT)
   goto done;
  error = vfs_setopt(opts, "linux.oss_version", &version0,
      sizeof(lpr->pr_oss_version));
  if (error != 0 && error != ENOENT)
   goto done;
 }
 error = 0;

 done:
 mtx_unlock(&ppr->pr_mtx);

 return (error);
}
