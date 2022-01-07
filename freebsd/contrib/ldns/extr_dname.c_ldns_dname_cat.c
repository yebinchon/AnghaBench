
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
typedef int ldns_status ;
typedef int const ldns_rdf ;


 scalar_t__ LDNS_RDF_TYPE_DNAME ;
 int LDNS_STATUS_ERR ;
 int LDNS_STATUS_MEM_ERR ;
 int LDNS_STATUS_OK ;
 int LDNS_XREALLOC (scalar_t__,int,scalar_t__) ;
 scalar_t__ ldns_dname_last_label_is_root_label (int const*) ;
 scalar_t__ ldns_rdf_data (int const*) ;
 scalar_t__ ldns_rdf_get_type (int const*) ;
 int ldns_rdf_set_data (int const*,int) ;
 int ldns_rdf_set_size (int const*,scalar_t__) ;
 scalar_t__ ldns_rdf_size (int const*) ;
 int memcpy (scalar_t__,scalar_t__,scalar_t__) ;
 int newd ;
 int uint8_t ;

ldns_status
ldns_dname_cat(ldns_rdf *rd1, const ldns_rdf *rd2)
{
 uint16_t left_size;
 uint16_t size;
 uint8_t* newd;

 if (ldns_rdf_get_type(rd1) != LDNS_RDF_TYPE_DNAME ||
   ldns_rdf_get_type(rd2) != LDNS_RDF_TYPE_DNAME) {
  return LDNS_STATUS_ERR;
 }




 left_size = ldns_rdf_size(rd1);
 if (ldns_dname_last_label_is_root_label(rd1)) {
  left_size--;
 }

 size = left_size + ldns_rdf_size(rd2);
 newd = LDNS_XREALLOC(ldns_rdf_data(rd1), uint8_t, size);
 if(!newd) {
  return LDNS_STATUS_MEM_ERR;
 }

 ldns_rdf_set_data(rd1, newd);
 memcpy(ldns_rdf_data(rd1) + left_size, ldns_rdf_data(rd2),
   ldns_rdf_size(rd2));
 ldns_rdf_set_size(rd1, size);

 return LDNS_STATUS_OK;
}
