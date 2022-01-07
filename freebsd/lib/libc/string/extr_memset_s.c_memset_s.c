
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rsize_t ;
typedef scalar_t__ errno_t ;


 scalar_t__ EINVAL ;
 scalar_t__ RSIZE_MAX ;
 int __throw_constraint_handler_s (char*,scalar_t__) ;

errno_t
memset_s(void *s, rsize_t smax, int c, rsize_t n)
{
 errno_t ret;
 rsize_t lim;
 unsigned char v;
 volatile unsigned char *dst;

 ret = EINVAL;
 lim = n < smax ? n : smax;
 v = (unsigned char)c;
 dst = (unsigned char *)s;
 if (s == ((void*)0)) {
  __throw_constraint_handler_s("memset_s : s is NULL", ret);
 } else if (smax > RSIZE_MAX) {
  __throw_constraint_handler_s("memset_s : smax > RSIZE_MAX",
      ret);
 } else if (n > RSIZE_MAX) {
  __throw_constraint_handler_s("memset_s : n > RSIZE_MAX", ret);
 } else {
  while (lim > 0)
   dst[--lim] = v;
  if (n > smax) {
   __throw_constraint_handler_s("memset_s : n > smax",
       ret);
  } else {
   ret = 0;
  }
 }
 return (ret);
}
