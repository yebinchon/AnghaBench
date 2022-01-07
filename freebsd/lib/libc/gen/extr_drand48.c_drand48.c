
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _rand48_seed ;
 double erand48 (int ) ;

double
drand48(void)
{
 return erand48(_rand48_seed);
}
