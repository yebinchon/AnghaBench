
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int ASN1_F_ASN1_FIND_END ;
 int ASN1_R_MISSING_EOC ;
 int ASN1err (int ,int ) ;
 int ERR_R_NESTED_ASN1_ERROR ;
 int UINT32_MAX ;
 scalar_t__ asn1_check_eoc (unsigned char const**,long) ;
 int asn1_check_tlen (long*,int *,int *,char*,int *,unsigned char const**,long,int,int ,int ,int *) ;

__attribute__((used)) static int asn1_find_end(const unsigned char **in, long len, char inf)
{
    uint32_t expected_eoc;
    long plen;
    const unsigned char *p = *in, *q;

    if (inf == 0) {
        *in += len;
        return 1;
    }
    expected_eoc = 1;






    while (len > 0) {
        if (asn1_check_eoc(&p, len)) {
            expected_eoc--;
            if (expected_eoc == 0)
                break;
            len -= 2;
            continue;
        }
        q = p;

        if (!asn1_check_tlen(&plen, ((void*)0), ((void*)0), &inf, ((void*)0), &p, len,
                             -1, 0, 0, ((void*)0))) {
            ASN1err(ASN1_F_ASN1_FIND_END, ERR_R_NESTED_ASN1_ERROR);
            return 0;
        }
        if (inf) {
            if (expected_eoc == UINT32_MAX) {
                ASN1err(ASN1_F_ASN1_FIND_END, ERR_R_NESTED_ASN1_ERROR);
                return 0;
            }
            expected_eoc++;
        } else {
            p += plen;
        }
        len -= p - q;
    }
    if (expected_eoc) {
        ASN1err(ASN1_F_ASN1_FIND_END, ASN1_R_MISSING_EOC);
        return 0;
    }
    *in = p;
    return 1;
}
