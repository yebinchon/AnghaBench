
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fp_rnd_t ;


 int float_rounding_mode ;

fp_rnd_t
fpsetround(fp_rnd_t rnd_dir)
{
 fp_rnd_t old;

 old = float_rounding_mode;
 float_rounding_mode = rnd_dir;
 return old;
}
