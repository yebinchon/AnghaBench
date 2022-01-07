
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_dev; scalar_t__ st_ino; } ;
typedef scalar_t__ ino_t ;
typedef scalar_t__ dev_t ;


 int MAXPATHLEN ;
 unsigned long PATHCTL ;
 int err (int,char*,unsigned long) ;
 int free (char*) ;
 char* malloc (size_t) ;
 size_t nitems (int*) ;
 int stat (char const*,struct stat*) ;
 int * strchr (char const*,char) ;
 int strlcat (char*,char const*,int) ;
 int strlcpy (char*,char*,int) ;
 int strlen (char*) ;
 char* strsep (char**,char*) ;
 int * strstr (char const*,char*) ;
 int sysctl (int*,size_t,char*,size_t*,int *,int ) ;
 scalar_t__ sysctlnametomib (unsigned long,int*,size_t*) ;
 int warnx (char*,char const*,...) ;

__attribute__((used)) static int
path_check(const char *kldname, int quiet)
{
 char *path, *tmppath, *element;
 struct stat sb;
 int mib[5];
 char kldpath[MAXPATHLEN];
 size_t miblen, pathlen;
 dev_t dev;
 ino_t ino;
 int found;

 if (strchr(kldname, '/') != ((void*)0))
  return (0);
 if (strstr(kldname, ".ko") == ((void*)0))
  return (0);
 if (stat(kldname, &sb) != 0)
  return (0);

 found = 0;
 dev = sb.st_dev;
 ino = sb.st_ino;

 miblen = nitems(mib);
 if (sysctlnametomib(PATHCTL, mib, &miblen) != 0)
  err(1, "sysctlnametomib(%s)", PATHCTL);
 if (sysctl(mib, miblen, ((void*)0), &pathlen, ((void*)0), 0) == -1)
  err(1, "getting path: sysctl(%s) - size only", PATHCTL);
 path = malloc(pathlen + 1);
 if (path == ((void*)0))
  err(1, "allocating %lu bytes for the path",
      (unsigned long)pathlen + 1);
 if (sysctl(mib, miblen, path, &pathlen, ((void*)0), 0) == -1)
  err(1, "getting path: sysctl(%s)", PATHCTL);
 tmppath = path;

 while ((element = strsep(&tmppath, ";")) != ((void*)0)) {
  strlcpy(kldpath, element, MAXPATHLEN);
  if (kldpath[strlen(kldpath) - 1] != '/') {
   strlcat(kldpath, "/", MAXPATHLEN);
  }
  strlcat(kldpath, kldname, MAXPATHLEN);

  if (stat(kldpath, &sb) == -1)
   continue;

  found = 1;

  if (sb.st_dev != dev || sb.st_ino != ino) {
   if (!quiet)
    warnx("%s will be loaded from %s, not the "
        "current directory", kldname, element);
   break;
  } else if (sb.st_dev == dev && sb.st_ino == ino)
   break;
 }

 free(path);

 if (!found) {
  if (!quiet)
   warnx("%s is not in the module path", kldname);
  return (-1);
 }

 return (0);
}
