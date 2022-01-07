
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;


 scalar_t__ get_cycles () ;

__attribute__((used)) static void mlx5_stall_cycles_poll_cq(uint64_t cycles)
{
 while (get_cycles() < cycles)
  ;
}
