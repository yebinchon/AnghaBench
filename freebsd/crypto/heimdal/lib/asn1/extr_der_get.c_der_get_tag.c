
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Der_type ;
typedef scalar_t__ Der_class ;


 int ASN1_OVERFLOW ;
 int ASN1_OVERRUN ;

int
der_get_tag (const unsigned char *p, size_t len,
      Der_class *class, Der_type *type,
      unsigned int *tag, size_t *size)
{
    size_t ret = 0;
    if (len < 1)
 return ASN1_OVERRUN;
    *class = (Der_class)(((*p) >> 6) & 0x03);
    *type = (Der_type)(((*p) >> 5) & 0x01);
    *tag = (*p) & 0x1f;
    p++; len--; ret++;
    if(*tag == 0x1f) {
 unsigned int continuation;
 unsigned int tag1;
 *tag = 0;
 do {
     if(len < 1)
  return ASN1_OVERRUN;
     continuation = *p & 128;
     tag1 = *tag * 128 + (*p % 128);

     if (tag1 < *tag)
  return ASN1_OVERFLOW;
     *tag = tag1;
     p++; len--; ret++;
 } while(continuation);
    }
    if(size) *size = ret;
    return 0;
}
