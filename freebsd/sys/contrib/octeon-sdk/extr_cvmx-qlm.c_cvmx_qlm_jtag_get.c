
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int start_bit; int stop_bit; } ;
typedef TYPE_1__ __cvmx_qlm_jtag_field_t ;


 TYPE_1__* __cvmx_qlm_lookup_field (char const*) ;
 int cvmx_helper_qlm_jtag_capture (int) ;
 int cvmx_helper_qlm_jtag_shift (int,int,int ) ;
 int cvmx_helper_qlm_jtag_shift_zeros (int,int) ;
 int cvmx_qlm_get_lanes (int) ;
 int cvmx_qlm_jtag_get_length () ;

uint64_t cvmx_qlm_jtag_get(int qlm, int lane, const char *name)
{
    const __cvmx_qlm_jtag_field_t *field = __cvmx_qlm_lookup_field(name);
    int qlm_jtag_length = cvmx_qlm_jtag_get_length();
    int num_lanes = cvmx_qlm_get_lanes(qlm);

    if (!field)
        return 0;


    cvmx_helper_qlm_jtag_capture(qlm);

    cvmx_helper_qlm_jtag_shift_zeros(qlm, qlm_jtag_length * (num_lanes-1-lane));
    cvmx_helper_qlm_jtag_shift_zeros(qlm, field->start_bit);

    return cvmx_helper_qlm_jtag_shift(qlm, field->stop_bit - field->start_bit + 1, 0);
}
