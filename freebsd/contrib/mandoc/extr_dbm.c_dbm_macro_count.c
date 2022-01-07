
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t int32_t ;


 size_t MACRO_MAX ;
 int assert (int) ;
 size_t* nvals ;

int32_t
dbm_macro_count(int32_t im)
{
 assert(im >= 0);
 assert(im < MACRO_MAX);
 return nvals[im];
}
