
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASN1_OVERRUN ;

int
der_get_boolean(const unsigned char *p, size_t len, int *data, size_t *size)
{
    if(len < 1)
 return ASN1_OVERRUN;
    if(*p != 0)
 *data = 1;
    else
 *data = 0;
    *size = 1;
    return 0;
}
