
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {long size; } ;
typedef int ASN1_VALUE ;
typedef TYPE_1__ ASN1_ITEM ;


 int ASN1_F_LONG_C2I ;
 int ASN1_R_ILLEGAL_PADDING ;
 int ASN1_R_INTEGER_TOO_LARGE_FOR_LONG ;
 int ASN1err (int ,int ) ;
 int COPY_SIZE (int *,long) ;
 int memcpy (int **,long*,int ) ;

__attribute__((used)) static int long_c2i(ASN1_VALUE **pval, const unsigned char *cont, int len,
                    int utype, char *free_cont, const ASN1_ITEM *it)
{
    int i;
    long ltmp;
    unsigned long utmp = 0, sign = 0x100;

    if (len > 1) {





        switch (cont[0]) {
        case 0xff:
            cont++;
            len--;
            sign = 0xff;
            break;
        case 0:
            cont++;
            len--;
            sign = 0;
            break;
        }
    }
    if (len > (int)sizeof(long)) {
        ASN1err(ASN1_F_LONG_C2I, ASN1_R_INTEGER_TOO_LARGE_FOR_LONG);
        return 0;
    }

    if (sign == 0x100) {

        if (len && (cont[0] & 0x80))
            sign = 0xff;
        else
            sign = 0;
    } else if (((sign ^ cont[0]) & 0x80) == 0) {
        ASN1err(ASN1_F_LONG_C2I, ASN1_R_ILLEGAL_PADDING);
        return 0;
    }
    utmp = 0;
    for (i = 0; i < len; i++) {
        utmp <<= 8;
        utmp |= cont[i] ^ sign;
    }
    ltmp = (long)utmp;
    if (ltmp < 0) {
        ASN1err(ASN1_F_LONG_C2I, ASN1_R_INTEGER_TOO_LARGE_FOR_LONG);
        return 0;
    }
    if (sign)
        ltmp = -ltmp - 1;
    if (ltmp == it->size) {
        ASN1err(ASN1_F_LONG_C2I, ASN1_R_INTEGER_TOO_LARGE_FOR_LONG);
        return 0;
    }
    memcpy(pval, &ltmp, COPY_SIZE(*pval, ltmp));
    return 1;
}
