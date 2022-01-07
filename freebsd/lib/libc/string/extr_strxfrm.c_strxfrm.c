
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __get_locale () ;
 size_t strxfrm_l (char*,char const*,size_t,int ) ;

size_t
strxfrm(char * __restrict dest, const char * __restrict src, size_t len)
{
 return strxfrm_l(dest, src, len, __get_locale());
}
