
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;


 int* ascii ;

__attribute__((used)) static ssize_t
get_line(const unsigned char *b, ssize_t avail, ssize_t *nlsize)
{
 ssize_t len;

 len = 0;
 while (len < avail) {
  switch (ascii[*b]) {
  case 0:
   if (nlsize != ((void*)0))
    *nlsize = 0;
   return (-1);
  case '\r':
   if (avail-len > 1 && b[1] == '\n') {
    if (nlsize != ((void*)0))
     *nlsize = 2;
    return (len+2);
   }

  case '\n':
   if (nlsize != ((void*)0))
    *nlsize = 1;
   return (len+1);
  case 1:
   b++;
   len++;
   break;
  }
 }
 if (nlsize != ((void*)0))
  *nlsize = 0;
 return (avail);
}
