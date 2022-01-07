
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int V_ASN1_IA5STRING ;
 int V_ASN1_PRINTABLESTRING ;
 int V_ASN1_T61STRING ;
 int ossl_isascii (int) ;
 int ossl_isasn1print (int) ;

int ASN1_PRINTABLE_type(const unsigned char *s, int len)
{
    int c;
    int ia5 = 0;
    int t61 = 0;

    if (len <= 0)
        len = -1;
    if (s == ((void*)0))
        return V_ASN1_PRINTABLESTRING;

    while ((*s) && (len-- != 0)) {
        c = *(s++);
        if (!ossl_isasn1print(c))
            ia5 = 1;
        if (!ossl_isascii(c))
            t61 = 1;
    }
    if (t61)
        return V_ASN1_T61STRING;
    if (ia5)
        return V_ASN1_IA5STRING;
    return V_ASN1_PRINTABLESTRING;
}
