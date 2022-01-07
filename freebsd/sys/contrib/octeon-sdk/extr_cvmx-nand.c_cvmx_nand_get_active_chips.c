
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ page_size; } ;


 TYPE_1__* cvmx_nand_state ;

int cvmx_nand_get_active_chips(void)
{
    int chip;
    int result = 0;
    for (chip=0; chip<8; chip++)
    {
        if (cvmx_nand_state[chip].page_size)
            result |= 1<<chip;
    }
    return result;
}
