
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int octeon_feature_t ;
struct TYPE_5__ {int eer_val; } ;
struct TYPE_7__ {TYPE_1__ s; void* u64; } ;
typedef TYPE_3__ cvmx_rnm_ctl_status_t ;
struct TYPE_6__ {int dorm_crypto; int nomul; int nocrypto; } ;
struct TYPE_8__ {TYPE_2__ s; void* u64; } ;
typedef TYPE_4__ cvmx_mio_fus_dat2_t ;


 int CVMX_MIO_FUS_DAT2 ;
 int CVMX_RNM_CTL_STATUS ;
 int OCTEON_CN3020 ;
 int OCTEON_CN30XX ;
 int OCTEON_CN31XX ;
 int OCTEON_CN38XX ;
 int OCTEON_CN3XXX ;
 int OCTEON_CN50XX ;
 int OCTEON_CN52XX ;
 int OCTEON_CN52XX_PASS1_X ;
 int OCTEON_CN56XX ;
 int OCTEON_CN56XX_PASS1_X ;
 int OCTEON_CN58XX ;
 int OCTEON_CN61XX ;
 int OCTEON_CN63XX ;
 int OCTEON_CN66XX ;
 int OCTEON_CN68XX ;
 int OCTEON_CN68XX_PASS2_X ;
 int OCTEON_CN6XXX ;
 int OCTEON_CNF71XX ;
 int OCTEON_CNF7XXX ;
 int OCTEON_IS_MODEL (int ) ;
 int cvmx_fuse_read (int) ;
 void* cvmx_read_csr (int ) ;

__attribute__((used)) static inline int old_octeon_has_feature(octeon_feature_t feature)
{
    switch (feature)
    {
        case 132:
            return !OCTEON_IS_MODEL(OCTEON_CN3XXX);

        case 128:
            if (OCTEON_IS_MODEL(OCTEON_CN30XX) || OCTEON_IS_MODEL(OCTEON_CN50XX) || OCTEON_IS_MODEL(OCTEON_CN52XX))
                return 0;
            else
                return !cvmx_fuse_read(121);

        case 150:
     if (OCTEON_IS_MODEL(OCTEON_CN6XXX) || OCTEON_IS_MODEL(OCTEON_CNF7XXX)) {
                cvmx_mio_fus_dat2_t fus_2;
                fus_2.u64 = cvmx_read_csr(CVMX_MIO_FUS_DAT2);
                if (fus_2.s.nocrypto || fus_2.s.nomul) {
                    return 0;
                } else if (!fus_2.s.dorm_crypto) {
                    return 1;
                } else {
                    cvmx_rnm_ctl_status_t st;
                    st.u64 = cvmx_read_csr(CVMX_RNM_CTL_STATUS);
                    return st.s.eer_val;
                }
            } else {
                return !cvmx_fuse_read(90);
            }

        case 146:
            if (OCTEON_IS_MODEL(OCTEON_CN6XXX) || OCTEON_IS_MODEL(OCTEON_CNF7XXX)) {
                cvmx_mio_fus_dat2_t fus_2;
                fus_2.u64 = cvmx_read_csr(CVMX_MIO_FUS_DAT2);
                return !fus_2.s.nocrypto && !fus_2.s.nomul && fus_2.s.dorm_crypto;
            } else {
                return 0;
            }

        case 135:
            return (OCTEON_IS_MODEL(OCTEON_CN56XX)
                    || OCTEON_IS_MODEL(OCTEON_CN52XX)
                    || OCTEON_IS_MODEL(OCTEON_CN6XXX)
                    || OCTEON_IS_MODEL(OCTEON_CNF7XXX));

 case 131:
     return (OCTEON_IS_MODEL(OCTEON_CN63XX) || OCTEON_IS_MODEL(OCTEON_CN66XX));

 case 144:
     return (OCTEON_IS_MODEL(OCTEON_CN68XX));

        case 143:
            return (OCTEON_IS_MODEL(OCTEON_CN38XX)
                    || OCTEON_IS_MODEL(OCTEON_CN58XX)
                    || OCTEON_IS_MODEL(OCTEON_CN56XX)
                    || OCTEON_IS_MODEL(OCTEON_CN6XXX)
                    || OCTEON_IS_MODEL(OCTEON_CNF7XXX));

        case 142:
            return OCTEON_IS_MODEL(OCTEON_CN38XX) || OCTEON_IS_MODEL(OCTEON_CN58XX) || OCTEON_IS_MODEL(OCTEON_CN56XX);

        case 130:
            return !(OCTEON_IS_MODEL(OCTEON_CN30XX) || OCTEON_IS_MODEL(OCTEON_CN50XX));
        case 140:
            return (OCTEON_IS_MODEL(OCTEON_CN56XX)
                    || OCTEON_IS_MODEL(OCTEON_CN52XX)
                    || OCTEON_IS_MODEL(OCTEON_CN6XXX));

        case 133:
            return OCTEON_IS_MODEL(OCTEON_CN56XX) || OCTEON_IS_MODEL(OCTEON_CN52XX) || OCTEON_IS_MODEL(OCTEON_CN6XXX);

        case 129:
            return !(OCTEON_IS_MODEL(OCTEON_CN38XX) || OCTEON_IS_MODEL(OCTEON_CN58XX));

        case 137:
            return ((OCTEON_IS_MODEL(OCTEON_CN56XX)
                     || OCTEON_IS_MODEL(OCTEON_CN52XX)
                     || OCTEON_IS_MODEL(OCTEON_CN6XXX)
                     || OCTEON_IS_MODEL(OCTEON_CNF7XXX))
                    && !OCTEON_IS_MODEL(OCTEON_CN56XX_PASS1_X)
                    && !OCTEON_IS_MODEL(OCTEON_CN52XX_PASS1_X));

        case 149:
            if (!OCTEON_IS_MODEL(OCTEON_CN38XX) && !OCTEON_IS_MODEL(OCTEON_CN31XX) && !OCTEON_IS_MODEL(OCTEON_CN58XX))
                return 0;
            else if (OCTEON_IS_MODEL(OCTEON_CN3020))
                return 0;
            else
                return !cvmx_fuse_read(120);

        case 145:
            if (!OCTEON_IS_MODEL(OCTEON_CN6XXX))
                return 0;
            else
                return !cvmx_fuse_read(90);

        case 148:
            if (!(OCTEON_IS_MODEL(OCTEON_CN63XX) || OCTEON_IS_MODEL(OCTEON_CN66XX)))
                return 0;
            else
                return !cvmx_fuse_read(90);

        case 141:
            return !(OCTEON_IS_MODEL(OCTEON_CN3XXX) || OCTEON_IS_MODEL(OCTEON_CN58XX) || OCTEON_IS_MODEL(OCTEON_CN50XX));

        case 136:
            return (OCTEON_IS_MODEL(OCTEON_CN56XX) || OCTEON_IS_MODEL(OCTEON_CN52XX));

        case 134:
            return (OCTEON_IS_MODEL(OCTEON_CN68XX));

        case 151:
            return (OCTEON_IS_MODEL(OCTEON_CN68XX));

        case 152:
            return (OCTEON_IS_MODEL(OCTEON_CN68XX));

        case 138:
            return (OCTEON_IS_MODEL(OCTEON_CN52XX)
                    || OCTEON_IS_MODEL(OCTEON_CN63XX)
                    || OCTEON_IS_MODEL(OCTEON_CN66XX)
                    || OCTEON_IS_MODEL(OCTEON_CN68XX));

        case 147:
            return (OCTEON_IS_MODEL(OCTEON_CN68XX_PASS2_X)
                    || OCTEON_IS_MODEL(OCTEON_CN61XX)
                    || OCTEON_IS_MODEL(OCTEON_CNF71XX));

        case 153:
            return (OCTEON_IS_MODEL(OCTEON_CN68XX_PASS2_X)
                    || OCTEON_IS_MODEL(OCTEON_CN61XX)
                    || OCTEON_IS_MODEL(OCTEON_CNF71XX));

        case 139:
            return (OCTEON_IS_MODEL(OCTEON_CN61XX)
      || OCTEON_IS_MODEL(OCTEON_CNF71XX));
        default:
     break;
    }
    return 0;
}
