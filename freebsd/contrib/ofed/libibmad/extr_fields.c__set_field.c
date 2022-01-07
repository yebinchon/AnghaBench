
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int bitoffs; int bitlen; } ;
typedef TYPE_1__ ib_field_t ;



__attribute__((used)) static void _set_field(void *buf, int base_offs, const ib_field_t * f,
         uint32_t val)
{
 int prebits = (8 - (f->bitoffs & 7)) & 7;
 int postbits = (f->bitoffs + f->bitlen) & 7;
 int bytelen = f->bitlen / 8;
 unsigned idx = base_offs + f->bitoffs / 8;
 char *p = (char *)buf;

 if (!bytelen && (f->bitoffs & 7) + f->bitlen < 8) {
  p[3 ^ idx] &= ~((((1 << f->bitlen) - 1)) << (f->bitoffs & 7));
  p[3 ^ idx] |=
      (val & ((1 << f->bitlen) - 1)) << (f->bitoffs & 7);
  return;
 }

 if (prebits) {
  p[3 ^ idx] &= (1 << (8 - prebits)) - 1;
  p[3 ^ idx++] |= (val & ((1 << prebits) - 1)) << (8 - prebits);
  val >>= prebits;
 }


 for (; bytelen--; val >>= 8)
  p[3 ^ idx++] = val & 0xff;

 if (postbits) {
  p[3 ^ idx] &= ~((1 << postbits) - 1);
  p[3 ^ idx] |= val;
 }
}
