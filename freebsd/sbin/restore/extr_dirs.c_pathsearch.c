
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct direct {int d_ino; } ;
typedef int ino_t ;


 int MAXPATHLEN ;
 int UFS_ROOTINO ;
 struct direct* searchdir (int ,char*) ;
 int strcpy (char*,char const*) ;
 char* strsep (char**,char*) ;

struct direct *
pathsearch(const char *pathname)
{
 ino_t ino;
 struct direct *dp;
 char *path, *name, buffer[MAXPATHLEN];

 strcpy(buffer, pathname);
 path = buffer;
 ino = UFS_ROOTINO;
 while (*path == '/')
  path++;
 dp = ((void*)0);
 while ((name = strsep(&path, "/")) != ((void*)0) && *name != '\0') {
  if ((dp = searchdir(ino, name)) == ((void*)0))
   return (((void*)0));
  ino = dp->d_ino;
 }
 return (dp);
}
