
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASN1_OVERFLOW ;

int
der_put_boolean(unsigned char *p, size_t len, const int *data, size_t *size)
{
    if(len < 1)
 return ASN1_OVERFLOW;
    if(*data != 0)
 *p = 0xff;
    else
 *p = 0;
    *size = 1;
    return 0;
}
