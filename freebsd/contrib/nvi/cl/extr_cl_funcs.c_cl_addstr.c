
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SCR ;


 int addstr4 (int *,void*,size_t,int ) ;

int
cl_addstr(SCR *sp, const char *str, size_t len)
{
 return addstr4(sp, (void *)str, len, 0);
}
