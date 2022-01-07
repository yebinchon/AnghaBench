
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ _variable; size_t _maximum; } ;
typedef TYPE_1__ sldns_rr_descriptor ;


 scalar_t__ LDNS_RDF_TYPE_NONE ;

size_t
sldns_rr_descriptor_maximum(const sldns_rr_descriptor *descriptor)
{
 if (descriptor) {
  if (descriptor->_variable != LDNS_RDF_TYPE_NONE) {
   return 65535;
  } else {
   return descriptor->_maximum;
  }
 } else {
  return 0;
 }
}
