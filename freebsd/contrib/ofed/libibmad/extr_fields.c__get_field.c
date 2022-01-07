
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_3__ {int bitoffs; int bitlen; } ;
typedef TYPE_1__ ib_field_t ;



__attribute__((used)) static uint32_t _get_field(void *buf, int base_offs, const ib_field_t * f)
{
 int prebits = (8 - (f->bitoffs & 7)) & 7;
 int postbits = (f->bitoffs + f->bitlen) & 7;
 int bytelen = f->bitlen / 8;
 unsigned idx = base_offs + f->bitoffs / 8;
 uint8_t *p = (uint8_t *) buf;
 uint32_t val = 0, v = 0, i;

 if (!bytelen && (f->bitoffs & 7) + f->bitlen < 8)
  return (p[3 ^ idx] >> (f->bitoffs & 7)) & ((1 << f->bitlen) -
          1);

 if (prebits)
  v = p[3 ^ idx++] >> (8 - prebits);

 if (postbits) {
  i = base_offs + (f->bitoffs + f->bitlen) / 8;
  val = (p[3 ^ i] & ((1 << postbits) - 1));
 }


 for (idx += bytelen - 1; bytelen--; idx--)
  val = (val << 8) | p[3 ^ idx];

 return (val << prebits) | v;
}
