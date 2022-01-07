
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int int64_t ;


 scalar_t__ ABS_INT64_MIN ;
 int ASN1_F_ASN1_GET_INT64 ;
 int ASN1_R_TOO_LARGE ;
 int ASN1_R_TOO_SMALL ;
 int ASN1err (int ,int ) ;
 scalar_t__ INT64_MAX ;
 scalar_t__ asn1_get_uint64 (scalar_t__*,unsigned char const*,size_t) ;

__attribute__((used)) static int asn1_get_int64(int64_t *pr, const unsigned char *b, size_t blen,
                          int neg)
{
    uint64_t r;
    if (asn1_get_uint64(&r, b, blen) == 0)
        return 0;
    if (neg) {
        if (r <= INT64_MAX) {


            *pr = -(int64_t)r;
        } else if (r == ABS_INT64_MIN) {


            *pr = (int64_t)(0 - r);
        } else {
            ASN1err(ASN1_F_ASN1_GET_INT64, ASN1_R_TOO_SMALL);
            return 0;
        }
    } else {
        if (r <= INT64_MAX) {
            *pr = (int64_t)r;
        } else {
            ASN1err(ASN1_F_ASN1_GET_INT64, ASN1_R_TOO_LARGE);
            return 0;
        }
    }
    return 1;
}
