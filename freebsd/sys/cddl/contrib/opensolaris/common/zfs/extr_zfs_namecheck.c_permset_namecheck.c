
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int namecheck_err_t ;


 int NAME_ERR_NO_AT ;
 int NAME_ERR_TOOLONG ;
 scalar_t__ ZFS_PERMSET_MAXLEN ;
 scalar_t__ strlen (char const*) ;
 int zfs_component_namecheck (char const*,int *,char*) ;

int
permset_namecheck(const char *path, namecheck_err_t *why, char *what)
{
 if (strlen(path) >= ZFS_PERMSET_MAXLEN) {
  if (why)
   *why = NAME_ERR_TOOLONG;
  return (-1);
 }

 if (path[0] != '@') {
  if (why) {
   *why = NAME_ERR_NO_AT;
   *what = path[0];
  }
  return (-1);
 }

 return (zfs_component_namecheck(&path[1], why, what));
}
