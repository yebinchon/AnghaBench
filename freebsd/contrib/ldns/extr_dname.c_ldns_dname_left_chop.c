
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ldns_rdf ;


 scalar_t__ LDNS_RDF_TYPE_DNAME ;
 scalar_t__ ldns_dname_label_count (int const*) ;
 int * ldns_dname_new_frm_data (int,int*) ;
 int* ldns_rdf_data (int const*) ;
 scalar_t__ ldns_rdf_get_type (int const*) ;
 int ldns_rdf_size (int const*) ;

ldns_rdf *
ldns_dname_left_chop(const ldns_rdf *d)
{
 uint8_t label_pos;
 ldns_rdf *chop;

 if (!d) {
  return ((void*)0);
 }

 if (ldns_rdf_get_type(d) != LDNS_RDF_TYPE_DNAME) {
  return ((void*)0);
 }
 if (ldns_dname_label_count(d) == 0) {

  return ((void*)0);
 }

 label_pos = ldns_rdf_data(d)[0];

 chop = ldns_dname_new_frm_data(ldns_rdf_size(d) - label_pos - 1,
   ldns_rdf_data(d) + label_pos + 1);
 return chop;
}
