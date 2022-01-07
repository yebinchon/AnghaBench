
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int addr; } ;
struct TYPE_11__ {TYPE_1__ s; } ;
struct TYPE_14__ {TYPE_2__ packet_ptr; } ;
typedef TYPE_5__ cvmx_wqe_t ;
struct TYPE_12__ {int pos0; int pos1; int pos2; int pos3; int pos4; int pos5; int pos6; int pos7; } ;
struct TYPE_15__ {TYPE_3__ s; void* u64; } ;
typedef TYPE_6__ cvmx_pip_bsel_ext_posx_t ;
struct TYPE_13__ {scalar_t__ offset; int skip; } ;
struct TYPE_16__ {TYPE_4__ s; void* u64; } ;
typedef TYPE_7__ cvmx_pip_bsel_ext_cfgx_t ;


 int CVMX_PIP_BSEL_EXT_CFGX (int) ;
 int CVMX_PIP_BSEL_EXT_POSX (int) ;
 int OCTEON_FEATURE_BIT_EXTRACTOR ;
 scalar_t__ cvmx_phys_to_ptr (int ) ;
 void* cvmx_read_csr (int ) ;
 int cvmx_wqe_get_port (TYPE_5__*) ;
 int octeon_has_feature (int ) ;

__attribute__((used)) static inline int cvmx_pip_get_bsel_table_index(cvmx_wqe_t *work)
{
    int bit = cvmx_wqe_get_port(work) & 0x3;

    int index;
    int y;
    cvmx_pip_bsel_ext_cfgx_t bsel_cfg;
    cvmx_pip_bsel_ext_posx_t bsel_pos;


    if (!octeon_has_feature(OCTEON_FEATURE_BIT_EXTRACTOR))
        return -1;

    bsel_cfg.u64 = cvmx_read_csr(CVMX_PIP_BSEL_EXT_CFGX(bit));
    bsel_pos.u64 = cvmx_read_csr(CVMX_PIP_BSEL_EXT_POSX(bit));

    index = 0;
    for (y = 0; y < 8; y++)
    {
        char *ptr = (char *)cvmx_phys_to_ptr(work->packet_ptr.s.addr);
        int bit_loc = 0;
        int bit;

        ptr += bsel_cfg.s.skip;
        switch(y)
        {
            case 0:
                ptr += (bsel_pos.s.pos0 >> 3);
                bit_loc = 7 - (bsel_pos.s.pos0 & 0x3);
                break;
            case 1:
                ptr += (bsel_pos.s.pos1 >> 3);
                bit_loc = 7 - (bsel_pos.s.pos1 & 0x3);
                break;
            case 2:
                ptr += (bsel_pos.s.pos2 >> 3);
                bit_loc = 7 - (bsel_pos.s.pos2 & 0x3);
                break;
            case 3:
                ptr += (bsel_pos.s.pos3 >> 3);
                bit_loc = 7 - (bsel_pos.s.pos3 & 0x3);
                break;
            case 4:
                ptr += (bsel_pos.s.pos4 >> 3);
                bit_loc = 7 - (bsel_pos.s.pos4 & 0x3);
                break;
            case 5:
                ptr += (bsel_pos.s.pos5 >> 3);
                bit_loc = 7 - (bsel_pos.s.pos5 & 0x3);
                break;
            case 6:
                ptr += (bsel_pos.s.pos6 >> 3);
                bit_loc = 7 - (bsel_pos.s.pos6 & 0x3);
                break;
            case 7:
                ptr += (bsel_pos.s.pos7 >> 3);
                bit_loc = 7 - (bsel_pos.s.pos7 & 0x3);
                break;
        }
        bit = (*ptr >> bit_loc) & 1;
        index |= bit << y;
    }
    index += bsel_cfg.s.offset;
    index &= 0x1ff;
    return index;
}
