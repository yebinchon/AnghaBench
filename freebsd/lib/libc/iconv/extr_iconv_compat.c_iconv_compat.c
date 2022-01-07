
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int iconv_t ;


 size_t __bsd_iconv (int ,char**,size_t*,char**,size_t*) ;

size_t
iconv_compat(iconv_t a, char ** __restrict b,
      size_t * __restrict c, char ** __restrict d,
      size_t * __restrict e)
{
 return __bsd_iconv(a, b, c, d, e);
}
