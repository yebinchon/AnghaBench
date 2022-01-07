
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* calloc (size_t,int) ;
 int isdir (char*) ;
 char* path ;
 size_t pathlen ;
 int strcpy (char*,char const*) ;
 size_t strlen (char const*) ;

__attribute__((used)) static int
isdir1 (const char *dir, const char *file)
{
  int status;
  int slash;
  size_t dirlen = strlen (dir);
  size_t filelen = strlen (file);
  if ((dirlen + filelen + 2) > pathlen)
    {
      path = calloc (dirlen + 1 + filelen + 1, sizeof (*path));
      pathlen = dirlen + filelen + 2;
    }
  strcpy (path, dir);
  slash = (path[dirlen] != '/');
  path[dirlen] = '/';
  strcpy (path + dirlen + slash , file);
  status = isdir (path);
  return status;
}
