
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int err (int,char*,unsigned long) ;
 int errno ;
 int free (char*) ;
 int getmib () ;
 char* malloc (size_t) ;
 int mib ;
 scalar_t__ miblen ;
 char* modpath ;
 unsigned long pathctl ;
 int sysctl (int ,scalar_t__,char*,size_t*,int *,int ) ;

__attribute__((used)) static void
getpath(void)
{
 char *path;
 size_t sz;

 if (modpath != ((void*)0)) {
  free(modpath);
  modpath = ((void*)0);
 }

 if (miblen == 0)
  getmib();
 if (sysctl(mib, miblen, ((void*)0), &sz, ((void*)0), 0) == -1)
  err(1, "getting path: sysctl(%s) - size only", pathctl);
 if ((path = malloc(sz + 1)) == ((void*)0)) {
  errno = ENOMEM;
  err(1, "allocating %lu bytes for the path",
      (unsigned long)sz+1);
 }
 if (sysctl(mib, miblen, path, &sz, ((void*)0), 0) == -1)
  err(1, "getting path: sysctl(%s)", pathctl);
 modpath = path;
}
