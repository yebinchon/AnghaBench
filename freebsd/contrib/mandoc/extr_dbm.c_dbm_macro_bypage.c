
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int32_t ;


 scalar_t__ MACRO_MAX ;
 int assert (int) ;
 int macro_bypage (scalar_t__,scalar_t__) ;

void
dbm_macro_bypage(int32_t im, int32_t ip)
{
 assert(im >= 0);
 assert(im < MACRO_MAX);
 assert(ip != 0);
 macro_bypage(im, ip);
}
