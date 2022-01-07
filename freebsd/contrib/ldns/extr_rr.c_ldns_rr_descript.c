
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint16_t ;
struct TYPE_4__ {size_t _type; } ;
typedef TYPE_1__ ldns_rr_descriptor ;


 size_t LDNS_RDATA_FIELD_DESCRIPTORS_COMMON ;
 size_t LDNS_RDATA_FIELD_DESCRIPTORS_COUNT ;
 TYPE_1__ const* rdata_field_descriptors ;

const ldns_rr_descriptor *
ldns_rr_descript(uint16_t type)
{
 size_t i;
 if (type < LDNS_RDATA_FIELD_DESCRIPTORS_COMMON) {
  return &rdata_field_descriptors[type];
 } else {

  for (i = LDNS_RDATA_FIELD_DESCRIPTORS_COMMON;
       i < LDNS_RDATA_FIELD_DESCRIPTORS_COUNT;
       i++) {
          if (rdata_field_descriptors[i]._type == type) {
         return &rdata_field_descriptors[i];
   }
  }
                return &rdata_field_descriptors[0];
 }
}
