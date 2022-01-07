
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int bus_space_handle_t ;


 int al_data_memory_barrier () ;
 int generic_bs_r_2 (int *,int ,int ) ;

__attribute__((used)) static inline uint16_t
al_reg_read16(uint16_t *l)
{

 al_data_memory_barrier();
 return (generic_bs_r_2(((void*)0), (bus_space_handle_t)l, 0));
}
