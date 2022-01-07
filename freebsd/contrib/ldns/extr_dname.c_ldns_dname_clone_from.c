
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
typedef scalar_t__ uint16_t ;
typedef int ldns_rdf ;


 scalar_t__ LDNS_RDF_TYPE_DNAME ;
 scalar_t__ ldns_dname_label_count (int const*) ;
 int * ldns_dname_new_frm_data (size_t,size_t*) ;
 size_t* ldns_rdf_data (int const*) ;
 scalar_t__ ldns_rdf_get_type (int const*) ;
 size_t ldns_rdf_size (int const*) ;

ldns_rdf *
ldns_dname_clone_from(const ldns_rdf *d, uint16_t n)
{
 uint8_t *data;
 uint8_t label_size;
 size_t data_size;

 if (!d ||
     ldns_rdf_get_type(d) != LDNS_RDF_TYPE_DNAME ||
     ldns_dname_label_count(d) < n) {
  return ((void*)0);
 }

 data = ldns_rdf_data(d);
 data_size = ldns_rdf_size(d);
 while (n > 0) {
  label_size = data[0] + 1;
  data += label_size;
  if (data_size < label_size) {

   return ((void*)0);
  }
  data_size -= label_size;
  n--;
 }

 return ldns_dname_new_frm_data(data_size, data);
}
