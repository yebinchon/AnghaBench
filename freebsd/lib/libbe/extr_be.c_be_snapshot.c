
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int lzh; } ;
typedef TYPE_1__ libbe_handle_t ;
typedef int buf ;


 int BE_ERR_INVALIDNAME ;
 int BE_ERR_NOPOOL ;
 int BE_ERR_SUCCESS ;
 int BE_ERR_UNKNOWN ;
 int BE_MAXPATHLEN ;
 int ENOTSUP ;

 int be_exists (TYPE_1__*,char*) ;
 int be_root_concat (TYPE_1__*,char const*,char*) ;
 int be_setup_snapshot_name (TYPE_1__*,char*,int) ;
 int errno ;
 int set_error (TYPE_1__*,int) ;
 int snprintf (char*,int,char*,char const*,char const*) ;
 int strlcat (char*,char const*,int) ;
 int strlcpy (char*,scalar_t__,int) ;
 scalar_t__ strrchr (char*,char) ;
 int zfs_snapshot (int ,char*,int,int *) ;

int
be_snapshot(libbe_handle_t *lbh, const char *source, const char *snap_name,
    bool recursive, char *result)
{
 char buf[BE_MAXPATHLEN];
 int err;

 be_root_concat(lbh, source, buf);

 if ((err = be_exists(lbh, buf)) != 0)
  return (set_error(lbh, err));

 if (snap_name != ((void*)0)) {
  if (strlcat(buf, "@", sizeof(buf)) >= sizeof(buf))
   return (set_error(lbh, BE_ERR_INVALIDNAME));

  if (strlcat(buf, snap_name, sizeof(buf)) >= sizeof(buf))
   return (set_error(lbh, BE_ERR_INVALIDNAME));

  if (result != ((void*)0))
   snprintf(result, BE_MAXPATHLEN, "%s@%s", source,
       snap_name);
 } else {
  be_setup_snapshot_name(lbh, buf, sizeof(buf));

  if (result != ((void*)0) && strlcpy(result, strrchr(buf, '/') + 1,
      sizeof(buf)) >= sizeof(buf))
   return (set_error(lbh, BE_ERR_INVALIDNAME));
 }
 if ((err = zfs_snapshot(lbh->lzh, buf, recursive, ((void*)0))) != 0) {
  switch (err) {
  case 128:
   return (set_error(lbh, BE_ERR_INVALIDNAME));

  default:






   if (errno == ENOTSUP)
    return (set_error(lbh, BE_ERR_NOPOOL));
   return (set_error(lbh, BE_ERR_UNKNOWN));
  }
 }

 return (BE_ERR_SUCCESS);
}
