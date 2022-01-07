
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t _maximum; scalar_t__ _variable; scalar_t__* _wireformat; } ;
typedef TYPE_1__ ldns_rr_descriptor ;
typedef scalar_t__ ldns_rdf_type ;


 scalar_t__ LDNS_RDF_TYPE_NONE ;
 int assert (int) ;

ldns_rdf_type
ldns_rr_descriptor_field_type(const ldns_rr_descriptor *descriptor,
                              size_t index)
{
 assert(descriptor != ((void*)0));
 assert(index < descriptor->_maximum
        || descriptor->_variable != LDNS_RDF_TYPE_NONE);
 if (index < descriptor->_maximum) {
  return descriptor->_wireformat[index];
 } else {
  return descriptor->_variable;
 }
}
