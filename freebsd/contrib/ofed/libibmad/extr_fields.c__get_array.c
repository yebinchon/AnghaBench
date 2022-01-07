
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int bitoffs; int bitlen; } ;
typedef TYPE_1__ ib_field_t ;


 int BE_TO_BITSOFFS (int,int) ;
 int memcpy (void*,int *,int) ;

__attribute__((used)) static void _get_array(void *buf, int base_offs, const ib_field_t * f,
         void *val)
{
 int bitoffs = f->bitoffs;

 if (f->bitlen < 32)
  bitoffs = BE_TO_BITSOFFS(bitoffs, f->bitlen);

 memcpy(val, (uint8_t *) buf + base_offs + bitoffs / 8, f->bitlen / 8);
}
