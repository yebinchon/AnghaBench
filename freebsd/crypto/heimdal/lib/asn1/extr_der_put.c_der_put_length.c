
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASN1_OVERFLOW ;

int
der_put_length (unsigned char *p, size_t len, size_t val, size_t *size)
{
    if (len < 1)
 return ASN1_OVERFLOW;

    if (val < 128) {
 *p = val;
 *size = 1;
    } else {
 size_t l = 0;

 while(val > 0) {
     if(len < 2)
  return ASN1_OVERFLOW;
     *p-- = val % 256;
     val /= 256;
     len--;
     l++;
 }
 *p = 0x80 | l;
 if(size)
     *size = l + 1;
    }
    return 0;
}
