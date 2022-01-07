
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BUF_MEM ;


 int ASN1_F_ASN1_COLLECT ;
 int ASN1_MAX_STRING_NEST ;
 int ASN1_R_MISSING_EOC ;
 int ASN1_R_NESTED_ASN1_STRING ;
 int ASN1_R_UNEXPECTED_EOC ;
 int ASN1err (int ,int ) ;
 int ERR_R_NESTED_ASN1_ERROR ;
 scalar_t__ asn1_check_eoc (unsigned char const**,long) ;
 int asn1_check_tlen (long*,int *,int *,char*,char*,unsigned char const**,long,int,int,int ,int *) ;
 int collect_data (int *,unsigned char const**,long) ;

__attribute__((used)) static int asn1_collect(BUF_MEM *buf, const unsigned char **in, long len,
                        char inf, int tag, int aclass, int depth)
{
    const unsigned char *p, *q;
    long plen;
    char cst, ininf;
    p = *in;
    inf &= 1;




    if (!buf && !inf) {
        *in += len;
        return 1;
    }
    while (len > 0) {
        q = p;

        if (asn1_check_eoc(&p, len)) {



            if (!inf) {
                ASN1err(ASN1_F_ASN1_COLLECT, ASN1_R_UNEXPECTED_EOC);
                return 0;
            }
            inf = 0;
            break;
        }

        if (!asn1_check_tlen(&plen, ((void*)0), ((void*)0), &ininf, &cst, &p,
                             len, tag, aclass, 0, ((void*)0))) {
            ASN1err(ASN1_F_ASN1_COLLECT, ERR_R_NESTED_ASN1_ERROR);
            return 0;
        }


        if (cst) {
            if (depth >= ASN1_MAX_STRING_NEST) {
                ASN1err(ASN1_F_ASN1_COLLECT, ASN1_R_NESTED_ASN1_STRING);
                return 0;
            }
            if (!asn1_collect(buf, &p, plen, ininf, tag, aclass, depth + 1))
                return 0;
        } else if (plen && !collect_data(buf, &p, plen))
            return 0;
        len -= p - q;
    }
    if (inf) {
        ASN1err(ASN1_F_ASN1_COLLECT, ASN1_R_MISSING_EOC);
        return 0;
    }
    *in = p;
    return 1;
}
