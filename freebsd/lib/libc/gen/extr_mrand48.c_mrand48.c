
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef long int32_t ;


 int _dorand48 (scalar_t__*) ;
 scalar_t__* _rand48_seed ;

long
mrand48(void)
{

 _dorand48(_rand48_seed);
 return ((int32_t)(((uint32_t)_rand48_seed[2] << 16) |
     (uint32_t)_rand48_seed[1]));
}
