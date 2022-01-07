
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbstate_t ;


 int __get_locale () ;
 size_t mbrlen_l (char const*,size_t,int *,int ) ;

size_t
mbrlen(const char * __restrict s, size_t n, mbstate_t * __restrict ps)
{
 return mbrlen_l(s, n, ps, __get_locale());
}
