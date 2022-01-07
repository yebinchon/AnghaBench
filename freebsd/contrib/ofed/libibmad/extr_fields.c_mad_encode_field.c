
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


 int _set_array (int *,int ,TYPE_1__ const*,void*) ;
 int _set_field (int *,int ,TYPE_1__ const*,int ) ;
 int _set_field64 (int *,int ,TYPE_1__ const*,int ) ;
 TYPE_1__* ib_mad_f ;

void mad_encode_field(uint8_t * buf, enum MAD_FIELDS field, void *val)
{
 const ib_field_t *f = ib_mad_f + field;

 if (!field) {
  *(int *)buf = *(int *)val;
  return;
 }
 if (f->bitlen <= 32) {
  _set_field(buf, 0, f, *(uint32_t *) val);
  return;
 }
 if (f->bitlen == 64) {
  _set_field64(buf, 0, f, *(uint64_t *) val);
  return;
 }
 _set_array(buf, 0, f, val);
}
