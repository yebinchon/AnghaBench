
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int get_cycles () ;

__attribute__((used)) static void mlx5_get_cycles(uint64_t *cycles)
{
 *cycles = get_cycles();
}
