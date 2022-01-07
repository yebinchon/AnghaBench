
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_uint32_t ;


 int initialize () ;
 int srand (int ) ;

void
isc_random_seed(isc_uint32_t seed)
{
 initialize();


 srand(seed);

}
