
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;


 int GET_FLOAT_WORD (int,float) ;
 int SET_FLOAT_WORD (float,int) ;

float
fabsf(float x)
{
 u_int32_t ix;
 GET_FLOAT_WORD(ix,x);
 SET_FLOAT_WORD(x,ix&0x7fffffff);
        return x;
}
