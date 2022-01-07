
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIT_STRING_BITNAME ;
typedef int ASN1_BIT_STRING ;


 int ASN1_BIT_STRING_num_asc (char const*,int *) ;
 int ASN1_BIT_STRING_set_bit (int *,int,int) ;

int ASN1_BIT_STRING_set_asc(ASN1_BIT_STRING *bs, const char *name, int value,
                            BIT_STRING_BITNAME *tbl)
{
    int bitnum;
    bitnum = ASN1_BIT_STRING_num_asc(name, tbl);
    if (bitnum < 0)
        return 0;
    if (bs) {
        if (!ASN1_BIT_STRING_set_bit(bs, bitnum, value))
            return 0;
    }
    return 1;
}
