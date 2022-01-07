
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mandoc_strntoi (char const*,size_t,int) ;

int
mchars_num2char(const char *p, size_t sz)
{
 int i;

 i = mandoc_strntoi(p, sz, 10);
 return i >= 0 && i < 256 ? i : -1;
}
