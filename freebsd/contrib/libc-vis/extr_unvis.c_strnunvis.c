
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strnunvisx (char*,size_t,char const*,int ) ;

int
strnunvis(char *dst, size_t dlen, const char *src)
{
 return strnunvisx(dst, dlen, src, 0);
}
