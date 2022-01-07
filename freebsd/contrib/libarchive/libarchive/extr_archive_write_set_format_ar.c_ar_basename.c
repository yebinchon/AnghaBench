
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char const*) ;

__attribute__((used)) static const char *
ar_basename(const char *path)
{
 const char *endp, *startp;

 endp = path + strlen(path) - 1;




 if (*endp == '/')
  return (((void*)0));


 startp = endp;
 while (startp > path && *(startp - 1) != '/')
  startp--;

 return (startp);
}
