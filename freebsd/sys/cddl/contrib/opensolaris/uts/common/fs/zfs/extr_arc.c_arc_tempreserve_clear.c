
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ int64_t ;


 int ASSERT (int) ;
 scalar_t__ arc_tempreserve ;
 int atomic_add_64 (scalar_t__*,int ) ;

void
arc_tempreserve_clear(uint64_t reserve)
{
 atomic_add_64(&arc_tempreserve, -reserve);
 ASSERT((int64_t)arc_tempreserve >= 0);
}
