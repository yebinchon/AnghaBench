
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Int32_t ;


 int GET_FLOAT_WORD (int,float) ;

int
__signbitf (float x)
{
  Int32_t hx;

  GET_FLOAT_WORD (hx, x);
  return hx & 0x80000000;
}
