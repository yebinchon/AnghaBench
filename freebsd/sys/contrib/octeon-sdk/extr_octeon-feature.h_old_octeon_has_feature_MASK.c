#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int octeon_feature_t ;
struct TYPE_5__ {int eer_val; } ;
struct TYPE_7__ {TYPE_1__ s; void* u64; } ;
typedef  TYPE_3__ cvmx_rnm_ctl_status_t ;
struct TYPE_6__ {int /*<<< orphan*/  dorm_crypto; int /*<<< orphan*/  nomul; int /*<<< orphan*/  nocrypto; } ;
struct TYPE_8__ {TYPE_2__ s; void* u64; } ;
typedef  TYPE_4__ cvmx_mio_fus_dat2_t ;

/* Variables and functions */
 int /*<<< orphan*/  CVMX_MIO_FUS_DAT2 ; 
 int /*<<< orphan*/  CVMX_RNM_CTL_STATUS ; 
 int /*<<< orphan*/  OCTEON_CN3020 ; 
 int /*<<< orphan*/  OCTEON_CN30XX ; 
 int /*<<< orphan*/  OCTEON_CN31XX ; 
 int /*<<< orphan*/  OCTEON_CN38XX ; 
 int /*<<< orphan*/  OCTEON_CN3XXX ; 
 int /*<<< orphan*/  OCTEON_CN50XX ; 
 int /*<<< orphan*/  OCTEON_CN52XX ; 
 int /*<<< orphan*/  OCTEON_CN52XX_PASS1_X ; 
 int /*<<< orphan*/  OCTEON_CN56XX ; 
 int /*<<< orphan*/  OCTEON_CN56XX_PASS1_X ; 
 int /*<<< orphan*/  OCTEON_CN58XX ; 
 int /*<<< orphan*/  OCTEON_CN61XX ; 
 int /*<<< orphan*/  OCTEON_CN63XX ; 
 int /*<<< orphan*/  OCTEON_CN66XX ; 
 int /*<<< orphan*/  OCTEON_CN68XX ; 
 int /*<<< orphan*/  OCTEON_CN68XX_PASS2_X ; 
 int /*<<< orphan*/  OCTEON_CN6XXX ; 
 int /*<<< orphan*/  OCTEON_CNF71XX ; 
 int /*<<< orphan*/  OCTEON_CNF7XXX ; 
#define  OCTEON_FEATURE_BIT_EXTRACTOR 153 
#define  OCTEON_FEATURE_CIU2 152 
#define  OCTEON_FEATURE_CN68XX_WQE 151 
#define  OCTEON_FEATURE_CRYPTO 150 
#define  OCTEON_FEATURE_DFA 149 
#define  OCTEON_FEATURE_DFM 148 
#define  OCTEON_FEATURE_DICI_MODE 147 
#define  OCTEON_FEATURE_DORM_CRYPTO 146 
#define  OCTEON_FEATURE_HFA 145 
#define  OCTEON_FEATURE_ILK 144 
#define  OCTEON_FEATURE_KEY_MEMORY 143 
#define  OCTEON_FEATURE_LED_CONTROLLER 142 
#define  OCTEON_FEATURE_MDIO_CLAUSE_45 141 
#define  OCTEON_FEATURE_MGMT_PORT 140 
#define  OCTEON_FEATURE_MMC 139 
#define  OCTEON_FEATURE_NAND 138 
#define  OCTEON_FEATURE_NO_WPTR 137 
#define  OCTEON_FEATURE_NPEI 136 
#define  OCTEON_FEATURE_PCIE 135 
#define  OCTEON_FEATURE_PKND 134 
#define  OCTEON_FEATURE_RAID 133 
#define  OCTEON_FEATURE_SAAD 132 
#define  OCTEON_FEATURE_SRIO 131 
#define  OCTEON_FEATURE_TRA 130 
#define  OCTEON_FEATURE_USB 129 
#define  OCTEON_FEATURE_ZIP 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC3(octeon_feature_t feature)
{
    switch (feature)
    {
        case OCTEON_FEATURE_SAAD:
            return !FUNC0(OCTEON_CN3XXX);

        case OCTEON_FEATURE_ZIP:
            if (FUNC0(OCTEON_CN30XX) || FUNC0(OCTEON_CN50XX) || FUNC0(OCTEON_CN52XX))
                return 0;
            else
                return !FUNC1(121);

        case OCTEON_FEATURE_CRYPTO:
	    if (FUNC0(OCTEON_CN6XXX) || FUNC0(OCTEON_CNF7XXX)) {
                cvmx_mio_fus_dat2_t fus_2;
                fus_2.u64 = FUNC2(CVMX_MIO_FUS_DAT2);
                if (fus_2.s.nocrypto || fus_2.s.nomul) {
                    return 0;
                } else if (!fus_2.s.dorm_crypto) {
                    return 1;
                } else {
                    cvmx_rnm_ctl_status_t st;
                    st.u64 = FUNC2(CVMX_RNM_CTL_STATUS);
                    return st.s.eer_val;
                }
            } else {
                return !FUNC1(90);
            }

        case OCTEON_FEATURE_DORM_CRYPTO:
            if (FUNC0(OCTEON_CN6XXX) || FUNC0(OCTEON_CNF7XXX)) {
                cvmx_mio_fus_dat2_t fus_2;
                fus_2.u64 = FUNC2(CVMX_MIO_FUS_DAT2);
                return !fus_2.s.nocrypto && !fus_2.s.nomul && fus_2.s.dorm_crypto;
            } else {
                return 0;
            }

        case OCTEON_FEATURE_PCIE:
            return (FUNC0(OCTEON_CN56XX)
                    || FUNC0(OCTEON_CN52XX)
                    || FUNC0(OCTEON_CN6XXX)
                    || FUNC0(OCTEON_CNF7XXX));

	case OCTEON_FEATURE_SRIO:
	    return (FUNC0(OCTEON_CN63XX) || FUNC0(OCTEON_CN66XX));

	case OCTEON_FEATURE_ILK:
	    return (FUNC0(OCTEON_CN68XX));

        case OCTEON_FEATURE_KEY_MEMORY:
            return (FUNC0(OCTEON_CN38XX)
                    || FUNC0(OCTEON_CN58XX)
                    || FUNC0(OCTEON_CN56XX)
                    || FUNC0(OCTEON_CN6XXX)
                    || FUNC0(OCTEON_CNF7XXX));

        case OCTEON_FEATURE_LED_CONTROLLER:
            return FUNC0(OCTEON_CN38XX) || FUNC0(OCTEON_CN58XX) || FUNC0(OCTEON_CN56XX);

        case OCTEON_FEATURE_TRA:
            return !(FUNC0(OCTEON_CN30XX) || FUNC0(OCTEON_CN50XX));
        case OCTEON_FEATURE_MGMT_PORT:
            return (FUNC0(OCTEON_CN56XX)
                    || FUNC0(OCTEON_CN52XX)
                    || FUNC0(OCTEON_CN6XXX));

        case OCTEON_FEATURE_RAID:
            return FUNC0(OCTEON_CN56XX) || FUNC0(OCTEON_CN52XX) || FUNC0(OCTEON_CN6XXX);

        case OCTEON_FEATURE_USB:
            return !(FUNC0(OCTEON_CN38XX) || FUNC0(OCTEON_CN58XX));

        case OCTEON_FEATURE_NO_WPTR:
            return ((FUNC0(OCTEON_CN56XX)
                     || FUNC0(OCTEON_CN52XX)
                     || FUNC0(OCTEON_CN6XXX)
                     || FUNC0(OCTEON_CNF7XXX))
                    && !FUNC0(OCTEON_CN56XX_PASS1_X)
                    && !FUNC0(OCTEON_CN52XX_PASS1_X));

        case OCTEON_FEATURE_DFA:
            if (!FUNC0(OCTEON_CN38XX) && !FUNC0(OCTEON_CN31XX) && !FUNC0(OCTEON_CN58XX))
                return 0;
            else if (FUNC0(OCTEON_CN3020))
                return 0;
            else
                return !FUNC1(120);

        case OCTEON_FEATURE_HFA:
            if (!FUNC0(OCTEON_CN6XXX))
                return 0;
            else
                return !FUNC1(90);

        case OCTEON_FEATURE_DFM:
            if (!(FUNC0(OCTEON_CN63XX) || FUNC0(OCTEON_CN66XX)))
                return 0;
            else
                return !FUNC1(90);

        case OCTEON_FEATURE_MDIO_CLAUSE_45:
            return !(FUNC0(OCTEON_CN3XXX) || FUNC0(OCTEON_CN58XX) || FUNC0(OCTEON_CN50XX));

        case OCTEON_FEATURE_NPEI:
            return (FUNC0(OCTEON_CN56XX) || FUNC0(OCTEON_CN52XX));

        case OCTEON_FEATURE_PKND:
            return (FUNC0(OCTEON_CN68XX));

        case OCTEON_FEATURE_CN68XX_WQE:
            return (FUNC0(OCTEON_CN68XX));

        case OCTEON_FEATURE_CIU2:
            return (FUNC0(OCTEON_CN68XX));

        case OCTEON_FEATURE_NAND:
            return (FUNC0(OCTEON_CN52XX)
                    || FUNC0(OCTEON_CN63XX)
                    || FUNC0(OCTEON_CN66XX)
                    || FUNC0(OCTEON_CN68XX));

        case OCTEON_FEATURE_DICI_MODE:
            return (FUNC0(OCTEON_CN68XX_PASS2_X)
                    || FUNC0(OCTEON_CN61XX)
                    || FUNC0(OCTEON_CNF71XX));

        case OCTEON_FEATURE_BIT_EXTRACTOR:
            return (FUNC0(OCTEON_CN68XX_PASS2_X)
                    || FUNC0(OCTEON_CN61XX)
                    || FUNC0(OCTEON_CNF71XX));

        case OCTEON_FEATURE_MMC:
            return (FUNC0(OCTEON_CN61XX)
		    || FUNC0(OCTEON_CNF71XX));
        default:
	    break;
    }
    return 0;
}