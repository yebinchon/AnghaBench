
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ page_size; } ;


 TYPE_1__* cvmx_nand_state ;
 int cvmx_pop (scalar_t__) ;

__attribute__((used)) static inline int __cvmx_nand_get_column_bits(int chip)
{
    return cvmx_pop(cvmx_nand_state[chip].page_size - 1);
}
