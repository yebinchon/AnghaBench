
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
struct TYPE_2__ {int value; int pages; } ;


 scalar_t__ MACRO_MAX ;
 char* dbm_get (int ) ;
 TYPE_1__** macros ;
 scalar_t__* nvals ;

__attribute__((used)) static char *
macro_bypage(int32_t arg_im, int32_t arg_ip)
{
 static const int32_t *pp;
 static int32_t im, ip, iv;



 if (arg_im < MACRO_MAX && arg_ip != 0) {
  im = arg_im;
  ip = arg_ip;
  pp = dbm_get(macros[im]->pages);
  iv = 0;
  return ((void*)0);
 }
 if (im >= MACRO_MAX)
  return ((void*)0);



 while (iv < nvals[im]) {
  if (*pp == ip)
   break;
  if (*pp == 0)
   iv++;
  pp++;
 }



 if (iv == nvals[im]) {
  im = MACRO_MAX;
  ip = 0;
  pp = ((void*)0);
  return ((void*)0);
 }



 if (++iv < nvals[im])
  while (*pp++ != 0)
   continue;

 return dbm_get(macros[im][iv - 1].value);
}
