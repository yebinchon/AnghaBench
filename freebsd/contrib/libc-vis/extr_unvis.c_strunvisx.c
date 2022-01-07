
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strnunvisx (char*,size_t,char const*,int) ;

int
strunvisx(char *dst, const char *src, int flag)
{
 return strnunvisx(dst, (size_t)~0, src, flag);
}
