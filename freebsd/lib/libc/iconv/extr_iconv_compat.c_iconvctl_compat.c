
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int iconv_t ;


 int __bsd_iconvctl (int ,int,void*) ;

int
iconvctl_compat(iconv_t a, int b, void *c)
{
 return __bsd_iconvctl(a, b, c);
}
