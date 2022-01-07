
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int iconv_t ;


 int __bsd_iconv_close (int ) ;

int
iconv_close(iconv_t a)
{
 return __bsd_iconv_close(a);
}
