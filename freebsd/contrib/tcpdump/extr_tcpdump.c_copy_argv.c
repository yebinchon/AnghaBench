
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int error (char*) ;
 scalar_t__ malloc (int ) ;
 scalar_t__ strlen (int ) ;

__attribute__((used)) static char *
copy_argv(register char **argv)
{
 register char **p;
 register u_int len = 0;
 char *buf;
 char *src, *dst;

 p = argv;
 if (*p == ((void*)0))
  return 0;

 while (*p)
  len += strlen(*p++) + 1;

 buf = (char *)malloc(len);
 if (buf == ((void*)0))
  error("copy_argv: malloc");

 p = argv;
 dst = buf;
 while ((src = *p++) != ((void*)0)) {
  while ((*dst++ = *src++) != '\0')
   ;
  dst[-1] = ' ';
 }
 dst[-1] = '\0';

 return buf;
}
