
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 scalar_t__ arc_available_memory () ;

__attribute__((used)) static boolean_t
arc_reclaim_needed(void)
{
 return (arc_available_memory() < 0);
}
