
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int GET_LOW_WORD (int,double volatile) ;
 int SET_LOW_WORD (double volatile,int) ;

__attribute__((used)) static __inline void
_b_trunc(volatile double *_dp)
{
 uint32_t _lw;

 GET_LOW_WORD(_lw, *_dp);
 SET_LOW_WORD(*_dp, _lw & 0xf8000000);
}
