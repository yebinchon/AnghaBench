
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_3__ {int start_bit; int stop_bit; } ;
typedef TYPE_1__ __cvmx_qlm_jtag_field_t ;


 int CVMX_QLM_JTAG_UINT32 ;
 int** __cvmx_qlm_jtag_xor_ref ;
 TYPE_1__* __cvmx_qlm_lookup_field (char const*) ;
 int cvmx_helper_qlm_jtag_capture (int) ;
 int cvmx_helper_qlm_jtag_shift (int,int,int) ;
 int cvmx_helper_qlm_jtag_update (int) ;
 int cvmx_qlm_get_lanes (int) ;
 int cvmx_qlm_jtag_get_length () ;
 int cvmx_wait_usec (int) ;

void cvmx_qlm_jtag_set(int qlm, int lane, const char *name, uint64_t value)
{
    int i, l;
    uint32_t shift_values[CVMX_QLM_JTAG_UINT32];
    int num_lanes = cvmx_qlm_get_lanes(qlm);
    const __cvmx_qlm_jtag_field_t *field = __cvmx_qlm_lookup_field(name);
    int qlm_jtag_length = cvmx_qlm_jtag_get_length();
    int total_length = qlm_jtag_length * num_lanes;
    int bits = 0;

    if (!field)
        return;


    cvmx_helper_qlm_jtag_capture(qlm);
    for (i=0; i<CVMX_QLM_JTAG_UINT32; i++)
        shift_values[i] = cvmx_helper_qlm_jtag_shift(qlm, 32, 0);


    for (l=0; l<num_lanes; l++)
    {
        uint64_t new_value = value;
        int bits;
        if ((l != lane) && (lane != -1))
            continue;
        for (bits = field->start_bit + (num_lanes-1-l)*qlm_jtag_length;
             bits <= field->stop_bit + (num_lanes-1-l)*qlm_jtag_length;
             bits++)
        {
            if (new_value & 1)
                shift_values[bits/32] |= 1<<(bits&31);
            else
                shift_values[bits/32] &= ~(1<<(bits&31));
            new_value>>=1;
        }
    }


    while (bits < total_length)
    {
        uint32_t shift = shift_values[bits/32] ^ __cvmx_qlm_jtag_xor_ref[qlm][bits/32];
        int width = total_length - bits;
        if (width > 32)
            width = 32;
        cvmx_helper_qlm_jtag_shift(qlm, width, shift);
        bits += 32;
    }


    cvmx_helper_qlm_jtag_update(qlm);



    cvmx_wait_usec(1000);
}
