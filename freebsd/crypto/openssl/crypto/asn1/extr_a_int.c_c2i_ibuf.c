
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASN1_F_C2I_IBUF ;
 int ASN1_R_ILLEGAL_PADDING ;
 int ASN1_R_ILLEGAL_ZERO_CONTENT ;
 int ASN1err (int ,int ) ;
 int twos_complement (unsigned char*,unsigned char const*,size_t,int) ;

__attribute__((used)) static size_t c2i_ibuf(unsigned char *b, int *pneg,
                       const unsigned char *p, size_t plen)
{
    int neg, pad;

    if (plen == 0) {
        ASN1err(ASN1_F_C2I_IBUF, ASN1_R_ILLEGAL_ZERO_CONTENT);
        return 0;
    }
    neg = p[0] & 0x80;
    if (pneg)
        *pneg = neg;

    if (plen == 1) {
        if (b != ((void*)0)) {
            if (neg)
                b[0] = (p[0] ^ 0xFF) + 1;
            else
                b[0] = p[0];
        }
        return 1;
    }

    pad = 0;
    if (p[0] == 0) {
        pad = 1;
    } else if (p[0] == 0xFF) {
        size_t i;





        for (pad = 0, i = 1; i < plen; i++)
            pad |= p[i];
        pad = pad != 0 ? 1 : 0;
    }

    if (pad && (neg == (p[1] & 0x80))) {
        ASN1err(ASN1_F_C2I_IBUF, ASN1_R_ILLEGAL_PADDING);
        return 0;
    }


    p += pad;
    plen -= pad;

    if (b != ((void*)0))
        twos_complement(b, p, plen, neg ? 0xffU : 0);

    return plen;
}
