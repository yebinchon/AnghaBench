
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASN1_OVERRUN ;

int
der_get_integer (const unsigned char *p, size_t len,
   int *ret, size_t *size)
{
    int val = 0;
    size_t oldlen = len;

    if (len > sizeof(int))
 return ASN1_OVERRUN;

    if (len > 0) {
 val = (signed char)*p++;
 while (--len)
     val = val * 256 + *p++;
    }
    *ret = val;
    if(size) *size = oldlen;
    return 0;
}
