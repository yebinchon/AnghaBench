
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fp_rnd_t ;


 int __fpgetround () ;

fp_rnd_t fpgetround(void)
{
 return __fpgetround();
}
