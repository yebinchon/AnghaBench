
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dtsec_regs {int dummy; } ;
typedef scalar_t__ int32_t ;


 int TRUE ;
 int fman_dtsec_set_bucket (struct dtsec_regs*,scalar_t__,int ) ;

void fman_dtsec_set_hash_table(struct dtsec_regs *regs, uint32_t crc, bool mcast, bool ghtx)
{
    int32_t bucket;
    if (ghtx)
        bucket = (int32_t)((crc >> 23) & 0x1ff);
    else {
        bucket = (int32_t)((crc >> 24) & 0xff);

        if (mcast)
            bucket += 0x100;
    }
    fman_dtsec_set_bucket(regs, bucket, TRUE);
}
