
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _citrus_iconv {int dummy; } ;
typedef scalar_t__ iconv_t ;
typedef int iconv_allocation_t ;


 scalar_t__ __bsd___iconv_open (char const*,char const*,struct _citrus_iconv*) ;

int
__bsd_iconv_open_into(const char *out, const char *in, iconv_allocation_t *ptr)
{
 struct _citrus_iconv *handle;

 handle = (struct _citrus_iconv *)ptr;
 return ((__bsd___iconv_open(out, in, handle) == (iconv_t)-1) ? -1 : 0);
}
