
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Der_type ;
typedef int Der_class ;


 int ASN1_OVERFLOW ;
 void* MAKE_TAG (int ,int ,int) ;

int
der_put_tag (unsigned char *p, size_t len, Der_class class, Der_type type,
      unsigned int tag, size_t *size)
{
    if (tag <= 30) {
 if (len < 1)
     return ASN1_OVERFLOW;
 *p = MAKE_TAG(class, type, tag);
 *size = 1;
    } else {
 size_t ret = 0;
 unsigned int continuation = 0;

 do {
     if (len < 1)
  return ASN1_OVERFLOW;
     *p-- = tag % 128 | continuation;
     len--;
     ret++;
     tag /= 128;
     continuation = 0x80;
 } while(tag > 0);
 if (len < 1)
     return ASN1_OVERFLOW;
 *p-- = MAKE_TAG(class, type, 0x1f);
 ret++;
 *size = ret;
    }
    return 0;
}
