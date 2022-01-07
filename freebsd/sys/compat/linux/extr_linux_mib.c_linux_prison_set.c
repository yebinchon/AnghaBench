
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsoptlist {int dummy; } ;
struct prison {int pr_mtx; } ;
struct linux_prison {int pr_oss_version; int pr_osname; int pr_osrelease; int pr_osrel; } ;
typedef int oss_version ;
typedef int jsys ;


 int ENOENT ;


 int LINUX_MAX_UTSNAME ;
 int linux_alloc_prison (struct prison*,struct linux_prison**) ;
 int linux_map_osrel (char*,int *) ;
 int linux_osd_jail_slot ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int osd_jail_del (struct prison*,int ) ;
 int strlcpy (int ,char*,int ) ;
 int vfs_copyopt (struct vfsoptlist*,char*,int*,int) ;
 int vfs_getopt (struct vfsoptlist*,char*,void**,int*) ;

__attribute__((used)) static int
linux_prison_set(void *obj, void *data)
{
 struct linux_prison *lpr;
 struct prison *pr = obj;
 struct vfsoptlist *opts = data;
 char *osname, *osrelease;
 int error, gotversion, jsys, len, oss_version;


 error = vfs_copyopt(opts, "linux", &jsys, sizeof(jsys));
 if (error == ENOENT)
  jsys = -1;
 error = vfs_getopt(opts, "linux.osname", (void **)&osname, &len);
 if (error == ENOENT)
  osname = ((void*)0);
 else
  jsys = 128;
 error = vfs_getopt(opts, "linux.osrelease", (void **)&osrelease, &len);
 if (error == ENOENT)
  osrelease = ((void*)0);
 else
  jsys = 128;
 error = vfs_copyopt(opts, "linux.oss_version", &oss_version,
     sizeof(oss_version));
 if (error == ENOENT)
  gotversion = 0;
 else {
  gotversion = 1;
  jsys = 128;
 }
 switch (jsys) {
 case 129:

  mtx_lock(&pr->pr_mtx);
  osd_jail_del(pr, linux_osd_jail_slot);
  mtx_unlock(&pr->pr_mtx);
  break;
 case 128:




  linux_alloc_prison(pr, &lpr);
  if (osrelease) {
   (void)linux_map_osrel(osrelease, &lpr->pr_osrel);
   strlcpy(lpr->pr_osrelease, osrelease,
       LINUX_MAX_UTSNAME);
  }
  if (osname)
   strlcpy(lpr->pr_osname, osname, LINUX_MAX_UTSNAME);
  if (gotversion)
   lpr->pr_oss_version = oss_version;
  mtx_unlock(&pr->pr_mtx);
 }

 return (0);
}
