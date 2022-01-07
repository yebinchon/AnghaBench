
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* root; } ;
typedef TYPE_1__ libbe_handle_t ;


 int BE_ERR_INVALIDNAME ;
 int BE_ERR_PATHLEN ;
 int BE_ERR_SUCCESS ;
 size_t BE_MAXPATHLEN ;
 int snprintf (char*,size_t,char*,char const*,char const*) ;
 int strlcpy (char*,char const*,size_t) ;
 size_t strlen (char const*) ;
 int * strrchr (char const*,char) ;
 char const* strstr (char const*,char const*) ;

int
be_root_concat(libbe_handle_t *lbh, const char *name, char *result)
{
 size_t name_len, root_len;

 name_len = strlen(name);
 root_len = strlen(lbh->root);


 if (strrchr(name, '/') != ((void*)0)) {
  if (strstr(name, lbh->root) != name)
   return (BE_ERR_INVALIDNAME);

  if (name_len >= BE_MAXPATHLEN)
   return (BE_ERR_PATHLEN);

  strlcpy(result, name, BE_MAXPATHLEN);
  return (BE_ERR_SUCCESS);
 } else if (name_len + root_len + 1 < BE_MAXPATHLEN) {
  snprintf(result, BE_MAXPATHLEN, "%s/%s", lbh->root,
      name);
  return (BE_ERR_SUCCESS);
 }

 return (BE_ERR_PATHLEN);
}
