
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ _variable; size_t _maximum; } ;
typedef TYPE_1__ ldns_rr_descriptor ;


 scalar_t__ LDNS_RDF_TYPE_NONE ;
 size_t UINT_MAX ;

size_t
ldns_rr_descriptor_maximum(const ldns_rr_descriptor *descriptor)
{
 if (descriptor) {
  if (descriptor->_variable != LDNS_RDF_TYPE_NONE) {

   return UINT_MAX;
  } else {
   return descriptor->_maximum;
  }
 } else {
  return 0;
 }
}
