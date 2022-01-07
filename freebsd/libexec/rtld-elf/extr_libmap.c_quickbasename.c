
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *
quickbasename(const char *path)
{
 const char *p;

 for (p = path; *path != '\0'; path++) {
  if (*path == '/')
   p = path + 1;
 }
 return (p);
}
