
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vnode_t ;
struct TYPE_3__ {char* scd_path; } ;
typedef TYPE_1__ spa_config_dirent_t ;
typedef int nvlist_t ;


 int CRCREAT ;
 int FCREAT ;
 int FOFFMAX ;
 int FSYNC ;
 int FTRUNC ;
 int FWRITE ;
 int KM_SLEEP ;
 int MAXPATHLEN ;
 int RLIM64_INFINITY ;
 int RMFILE ;
 int UIO_SYSSPACE ;
 int UIO_WRITE ;
 int VOP_CLOSE (int *,int,int,int ,int ,int *) ;
 int VOP_FSYNC (int *,int ,int ,int *) ;
 char* fnvlist_pack (int *,size_t*) ;
 int fnvlist_pack_free (char*,size_t) ;
 int kcred ;
 int kmem_free (char*,int ) ;
 char* kmem_zalloc (int ,int ) ;
 int snprintf (char*,int ,char*,char*) ;
 int vn_open (char*,int ,int,int,int **,int ,int ) ;
 int vn_rdwr (int ,int *,char*,size_t,int ,int ,int ,int ,int ,int *) ;
 int vn_remove (char*,int ,int ) ;
 int vn_rename (char*,char*,int ) ;

__attribute__((used)) static int
spa_config_write(spa_config_dirent_t *dp, nvlist_t *nvl)
{
 size_t buflen;
 char *buf;
 vnode_t *vp;
 int oflags = FWRITE | FTRUNC | FCREAT | FOFFMAX;
 char *temp;
 int err;




 if (nvl == ((void*)0)) {
  err = vn_remove(dp->scd_path, UIO_SYSSPACE, RMFILE);
  return (err);
 }




 buf = fnvlist_pack(nvl, &buflen);
 temp = kmem_zalloc(MAXPATHLEN, KM_SLEEP);






 (void) snprintf(temp, MAXPATHLEN, "%s.tmp", dp->scd_path);

 err = vn_open(temp, UIO_SYSSPACE, oflags, 0644, &vp, CRCREAT, 0);
 if (err == 0) {
  err = vn_rdwr(UIO_WRITE, vp, buf, buflen, 0, UIO_SYSSPACE,
      0, RLIM64_INFINITY, kcred, ((void*)0));
  if (err == 0)
   err = VOP_FSYNC(vp, FSYNC, kcred, ((void*)0));
  if (err == 0)
   err = vn_rename(temp, dp->scd_path, UIO_SYSSPACE);
  (void) VOP_CLOSE(vp, oflags, 1, 0, kcred, ((void*)0));
 }

 (void) vn_remove(temp, UIO_SYSSPACE, RMFILE);

 fnvlist_pack_free(buf, buflen);
 kmem_free(temp, MAXPATHLEN);
 return (err);
}
