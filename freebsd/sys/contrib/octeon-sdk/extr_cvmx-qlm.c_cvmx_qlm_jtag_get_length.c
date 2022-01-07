
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int stop_bit; scalar_t__ name; } ;
typedef TYPE_1__ __cvmx_qlm_jtag_field_t ;


 TYPE_1__* cvmx_qlm_jtag_get_field () ;

int cvmx_qlm_jtag_get_length(void)
{
    const __cvmx_qlm_jtag_field_t *qlm_ptr = cvmx_qlm_jtag_get_field();
    int length = 0;


    while (qlm_ptr != ((void*)0) && qlm_ptr->name)
    {
        if (qlm_ptr->stop_bit > length)
            length = qlm_ptr->stop_bit + 1;
        qlm_ptr++;
    }
    return length;
}
