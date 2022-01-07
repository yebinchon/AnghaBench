
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t strlen (char const*) ;

__attribute__((used)) static int
pathname_is_dir(const char *pathname)
{
 size_t l = strlen(pathname);

 return l > 0 && pathname[l - 1] == '/';
}
