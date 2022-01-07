
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* zc_name; int zc_cookie; } ;
typedef TYPE_1__ zfs_cmd_t ;
typedef int objset_t ;


 int ENOENT ;
 int ESRCH ;
 int FTAG ;
 int SET_ERROR (int ) ;
 scalar_t__ dataset_name_hidden (char*) ;
 int dmu_dir_list_next (int *,int,char*,int *,int *) ;
 int dmu_objset_hold (char*,int ,int **) ;
 int dmu_objset_rele (int *,int ) ;
 int * strchr (char*,char) ;
 int strlcat (char*,char*,int) ;
 size_t strlen (char*) ;
 char* strrchr (char*,char) ;
 int zfs_ioc_objset_stats (TYPE_1__*) ;

__attribute__((used)) static int
zfs_ioc_dataset_list_next(zfs_cmd_t *zc)
{
 objset_t *os;
 int error;
 char *p;
 size_t orig_len = strlen(zc->zc_name);

top:
 if (error = dmu_objset_hold(zc->zc_name, FTAG, &os)) {
  if (error == ENOENT)
   error = SET_ERROR(ESRCH);
  return (error);
 }

 p = strrchr(zc->zc_name, '/');
 if (p == ((void*)0) || p[1] != '\0')
  (void) strlcat(zc->zc_name, "/", sizeof (zc->zc_name));
 p = zc->zc_name + strlen(zc->zc_name);

 do {
  error = dmu_dir_list_next(os,
      sizeof (zc->zc_name) - (p - zc->zc_name), p,
      ((void*)0), &zc->zc_cookie);
  if (error == ENOENT)
   error = SET_ERROR(ESRCH);
 } while (error == 0 && dataset_name_hidden(zc->zc_name));
 dmu_objset_rele(os, FTAG);





 if (error == 0 && strchr(zc->zc_name, '$') == ((void*)0)) {
  error = zfs_ioc_objset_stats(zc);
  if (error == ENOENT) {

   zc->zc_name[orig_len] = '\0';
   goto top;
  }
 }
 return (error);
}
