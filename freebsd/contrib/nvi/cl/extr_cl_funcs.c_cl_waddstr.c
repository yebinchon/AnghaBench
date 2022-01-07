
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SCR ;
typedef int CHAR_T ;


 int addstr4 (int *,void*,size_t,int) ;

int
cl_waddstr(SCR *sp, const CHAR_T *str, size_t len)
{
 return addstr4(sp, (void *)str, len, 1);
}
