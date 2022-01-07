
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int int32_t ;


 int GET_FLOAT_WORD (int,float) ;

int finitef(float x)
{
 int32_t ix;
 GET_FLOAT_WORD(ix,x);
 return (int)((u_int32_t)((ix&0x7fffffff)-0x7f800000)>>31);
}
