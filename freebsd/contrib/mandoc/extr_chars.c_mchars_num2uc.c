
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int mandoc_strntoi (char const*,size_t,int) ;

int
mchars_num2uc(const char *p, size_t sz)
{
 int i;

 i = mandoc_strntoi(p, sz, 16);
 assert(i >= 0 && i <= 0x10FFFF);
 return i;
}
