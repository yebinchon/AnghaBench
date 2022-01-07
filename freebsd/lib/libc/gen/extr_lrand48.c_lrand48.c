
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _dorand48 (scalar_t__*) ;
 scalar_t__* _rand48_seed ;

long
lrand48(void)
{
 _dorand48(_rand48_seed);
 return ((long) _rand48_seed[2] << 15) + ((long) _rand48_seed[1] >> 1);
}
