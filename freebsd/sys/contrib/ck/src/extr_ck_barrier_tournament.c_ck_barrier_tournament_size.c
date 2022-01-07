
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ck_internal_log (int ) ;
 int ck_internal_power_2 (unsigned int) ;

unsigned int
ck_barrier_tournament_size(unsigned int nthr)
{

 return (ck_internal_log(ck_internal_power_2(nthr)) + 1);
}
