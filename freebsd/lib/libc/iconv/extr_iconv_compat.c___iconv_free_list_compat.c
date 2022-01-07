
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __bsd___iconv_free_list (char**,size_t) ;

void
__iconv_free_list_compat(char ** a, size_t b)
{
 __bsd___iconv_free_list(a, b);
}
