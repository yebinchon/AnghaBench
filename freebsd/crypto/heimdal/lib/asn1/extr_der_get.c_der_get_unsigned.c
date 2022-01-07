
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASN1_OVERRUN ;

int
der_get_unsigned (const unsigned char *p, size_t len,
    unsigned *ret, size_t *size)
{
    unsigned val = 0;
    size_t oldlen = len;

    if (len == sizeof(unsigned) + 1 && p[0] == 0)
 ;
    else if (len > sizeof(unsigned))
 return ASN1_OVERRUN;

    while (len--)
 val = val * 256 + *p++;
    *ret = val;
    if(size) *size = oldlen;
    return 0;
}
