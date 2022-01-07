
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
typedef int u_int ;
typedef int netdissect_options ;


 int ND_PRINT (int *) ;
 int ND_TTEST2 (int const,int) ;
 scalar_t__ create_osi_cksum (int const*,int,int) ;
 int printf (char*,int const*,int,int) ;

__attribute__((used)) static void
osi_print_cksum(netdissect_options *ndo, const uint8_t *pptr,
         uint16_t checksum, int checksum_offset, u_int length)
{
        uint16_t calculated_checksum;





        if (!checksum
            || checksum_offset < 0
            || !ND_TTEST2(*(pptr + checksum_offset), 2)
            || (u_int)checksum_offset > length
            || !ND_TTEST2(*pptr, length)) {
                ND_PRINT((ndo, " (unverified)"));
        } else {



                calculated_checksum = create_osi_cksum(pptr, checksum_offset, length);
                if (checksum == calculated_checksum) {
                        ND_PRINT((ndo, " (correct)"));
                } else {
                        ND_PRINT((ndo, " (incorrect should be 0x%04x)", calculated_checksum));
                }
        }
}
