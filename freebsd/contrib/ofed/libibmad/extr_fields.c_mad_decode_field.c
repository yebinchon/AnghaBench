
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_6__ {int bitlen; } ;
typedef TYPE_1__ ib_field_t ;
typedef enum MAD_FIELDS { ____Placeholder_MAD_FIELDS } MAD_FIELDS ;


 int _get_array (int *,int ,TYPE_1__ const*,void*) ;
 int _get_field (int *,int ,TYPE_1__ const*) ;
 int _get_field64 (int *,int ,TYPE_1__ const*) ;
 TYPE_1__* ib_mad_f ;

void mad_decode_field(uint8_t * buf, enum MAD_FIELDS field, void *val)
{
 const ib_field_t *f = ib_mad_f + field;

 if (!field) {
  *(int *)val = *(int *)buf;
  return;
 }
 if (f->bitlen <= 32) {
  *(uint32_t *) val = _get_field(buf, 0, f);
  return;
 }
 if (f->bitlen == 64) {
  *(uint64_t *) val = _get_field64(buf, 0, f);
  return;
 }
 _get_array(buf, 0, f, val);
}
