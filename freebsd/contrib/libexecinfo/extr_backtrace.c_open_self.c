
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int path ;





 int MAXPATHLEN ;
 char* SELF ;
 int open (char const*,int) ;
 int sysctl (int const*,int,char*,size_t*,int *,int ) ;

__attribute__((used)) static int
open_self(int flags)
{
 const char *pathname = SELF;

 static const int name[] = {
  130, 129, 128, -1,
 };
 char path[MAXPATHLEN];
 size_t len;

 len = sizeof(path);
 if (sysctl(name, 4, path, &len, ((void*)0), 0) != -1)
  pathname = path;

 return open(pathname, flags);
}
