
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * systime_func_ptr ;


 int * systime_func ;
 int time ;

systime_func_ptr
ntpcal_set_timefunc(
 systime_func_ptr nfunc
 )
{
 systime_func_ptr res;

 res = systime_func;
 if (((void*)0) == nfunc)
  nfunc = &time;
 systime_func = nfunc;

 return res;
}
