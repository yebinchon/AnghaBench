
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Int32_t ;


 int GET_HIGH_WORD (int,double) ;

int
__signbit (double x)
{
  Int32_t hx;

  GET_HIGH_WORD (hx, x);
  return hx & 0x80000000;
}
