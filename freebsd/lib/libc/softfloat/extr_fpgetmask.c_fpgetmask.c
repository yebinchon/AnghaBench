
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fp_except ;


 int float_exception_mask ;

fp_except
fpgetmask(void)
{

 return float_exception_mask;
}
