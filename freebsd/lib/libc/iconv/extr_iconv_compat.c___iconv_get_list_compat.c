
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __iconv_bool ;


 int __bsd___iconv_get_list (char***,size_t*,int ) ;

int
__iconv_get_list_compat(char ***a, size_t *b, __iconv_bool c)
{
 return __bsd___iconv_get_list(a, b, c);
}
