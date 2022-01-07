
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ e_c; } ;
typedef TYPE_1__ EVENT ;
typedef int CHAR_T ;



int
e_memcmp(
 CHAR_T *p1,
 EVENT *ep,
 size_t n)
{
 if (n != 0) {
  do {
   if (*p1++ != ep->e_c)
    return (*--p1 - ep->e_c);
   ++ep;
  } while (--n != 0);
 }
 return (0);
}
