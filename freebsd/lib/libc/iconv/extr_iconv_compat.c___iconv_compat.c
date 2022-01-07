
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int iconv_t ;
typedef int __uint32_t ;


 size_t __bsd___iconv (int ,char**,size_t*,char**,size_t*,int ,size_t*) ;

size_t
__iconv_compat(iconv_t a, char ** b, size_t * c, char ** d,
     size_t * e, __uint32_t f, size_t *g)
{
 return __bsd___iconv(a, b, c, d, e, f, g);
}
