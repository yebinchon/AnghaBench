
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 scalar_t__ S_ISREG (int ) ;
 int bcopy (char const*,char*,int) ;
 char** emptyextlist ;
 int free (char*) ;
 char* malloc (int) ;
 scalar_t__ stat (char*,struct stat*) ;
 int strcpy (char*,char*) ;
 int strlen (char const*) ;

__attribute__((used)) static char *
file_lookup(const char *path, const char *name, int namelen, char **extlist)
{
 struct stat st;
 char *result, *cp, **cpp;
 int pathlen, extlen, len;

 pathlen = strlen(path);
 extlen = 0;
 if (extlist == ((void*)0))
  extlist = emptyextlist;
 for (cpp = extlist; *cpp; cpp++) {
  len = strlen(*cpp);
  if (len > extlen)
   extlen = len;
 }
 result = malloc(pathlen + namelen + extlen + 2);
 if (result == ((void*)0))
  return (((void*)0));
 bcopy(path, result, pathlen);
 if (pathlen > 0 && result[pathlen - 1] != '/')
  result[pathlen++] = '/';
 cp = result + pathlen;
 bcopy(name, cp, namelen);
 cp += namelen;
 for (cpp = extlist; *cpp; cpp++) {
  strcpy(cp, *cpp);
  if (stat(result, &st) == 0 && S_ISREG(st.st_mode))
   return result;
 }
 free(result);
 return ((void*)0);
}
