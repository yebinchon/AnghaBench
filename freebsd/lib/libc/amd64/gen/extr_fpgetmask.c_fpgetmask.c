
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fp_except_t ;


 int __fpgetmask () ;

fp_except_t fpgetmask(void)
{
 return __fpgetmask();
}
