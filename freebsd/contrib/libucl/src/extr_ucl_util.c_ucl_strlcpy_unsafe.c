
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (char*,char const*,size_t) ;

size_t
ucl_strlcpy_unsafe (char *dst, const char *src, size_t siz)
{
 memcpy (dst, src, siz - 1);
 dst[siz - 1] = '\0';

 return siz - 1;
}
