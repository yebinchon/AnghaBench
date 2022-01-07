
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ iconv_t ;


 int iconv (scalar_t__,char**,size_t*,char**,size_t*) ;
 scalar_t__ nls_toloc ;
 char* strcpy (char*,char*) ;
 size_t strlen (char*) ;

char *
nls_str_toloc(char *dst, char *src)
{
 return strcpy(dst, src);

}
