
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pathhead {int dummy; } ;


 int ENOMEM ;
 int err (int,char*,...) ;
 int errno ;
 int free (char*) ;
 int getmib () ;
 int mib ;
 scalar_t__ miblen ;
 char* modpath ;
 int pathctl ;
 char* qstring (struct pathhead*) ;
 scalar_t__ strlen (char*) ;
 int sysctl (int ,scalar_t__,int *,int *,char*,scalar_t__) ;

__attribute__((used)) static void
setpath(struct pathhead *pathq)
{
 char *newpath;

 if (miblen == 0)
  getmib();
 if ((newpath = qstring(pathq)) == ((void*)0)) {
  errno = ENOMEM;
  err(1, "building path string");
 }
 if (sysctl(mib, miblen, ((void*)0), ((void*)0), newpath, strlen(newpath)+1) == -1)
  err(1, "setting path: sysctl(%s)", pathctl);

 if (modpath != ((void*)0))
  free(modpath);
 modpath = newpath;
}
