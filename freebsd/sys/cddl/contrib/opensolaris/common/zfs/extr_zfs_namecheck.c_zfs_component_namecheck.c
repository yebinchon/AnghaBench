
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int namecheck_err_t ;


 int NAME_ERR_EMPTY_COMPONENT ;
 int NAME_ERR_INVALCHAR ;
 int NAME_ERR_TOOLONG ;
 scalar_t__ ZFS_MAX_DATASET_NAME_LEN ;
 scalar_t__ strlen (char const*) ;
 int valid_char (char const) ;

int
zfs_component_namecheck(const char *path, namecheck_err_t *why, char *what)
{
 const char *loc;

 if (strlen(path) >= ZFS_MAX_DATASET_NAME_LEN) {
  if (why)
   *why = NAME_ERR_TOOLONG;
  return (-1);
 }

 if (path[0] == '\0') {
  if (why)
   *why = NAME_ERR_EMPTY_COMPONENT;
  return (-1);
 }

 for (loc = path; *loc; loc++) {
  if (!valid_char(*loc)) {
   if (why) {
    *why = NAME_ERR_INVALCHAR;
    *what = *loc;
   }
   return (-1);
  }
 }
 return (0);
}
