
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strstr (char*,char*) ;

__attribute__((used)) static void
reduce_path(char *fn)
{
 char *slash, *ptr;


 while ((slash = strstr(fn, "/./")) != ((void*)0)) {
  for (ptr = slash; ptr > fn && ptr[-1] == '/'; ptr--)
   ;
  slash += 2;
  while (*slash)
   *++ptr = *++slash;
 }


 while ((slash = strstr(fn, "/../")) != ((void*)0)) {
  if (slash == fn)
   break;
  for (ptr = slash; ptr > fn && ptr[-1] == '/'; ptr--)
   ;
  for (ptr--; ptr >= fn; ptr--)
   if (*ptr == '/')
    break;
  if (ptr < fn)
   break;
  slash += 3;
  while (*slash)
   *++ptr = *++slash;
 }
}
