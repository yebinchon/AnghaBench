
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int H5_TEMP_BASE ;
 int H5_TEMP_BASE_CPU ;
 int H5_TEMP_BASE_GPU ;
 int H5_TEMP_DIV ;
 int H5_TEMP_MUL ;
 int H5_TEMP_MUL_CPU ;
 int H5_TEMP_MUL_GPU ;
 int printf (char*,int) ;

__attribute__((used)) static uint32_t
h5_to_reg(int val, int sensor)
{
 int tmp;

 if (val < 70) {
  tmp = H5_TEMP_BASE - (val << H5_TEMP_DIV);
  tmp /= H5_TEMP_MUL;
 } else {
  if (sensor == 0) {
   tmp = H5_TEMP_BASE_CPU - (val << H5_TEMP_DIV);
   tmp /= H5_TEMP_MUL_CPU;
  } else if (sensor == 1) {
   tmp = H5_TEMP_BASE_GPU - (val << H5_TEMP_DIV);
   tmp /= H5_TEMP_MUL_GPU;
  } else {
   printf("Unknown sensor %d\n", sensor);
   return (val);
  }
 }

 return ((uint32_t)tmp);
}
