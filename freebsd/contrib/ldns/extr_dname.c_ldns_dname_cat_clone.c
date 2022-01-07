
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int ldns_rdf ;


 int LDNS_FREE (int) ;
 scalar_t__ LDNS_RDF_TYPE_DNAME ;
 int LDNS_XMALLOC (int,int) ;
 int buf ;
 scalar_t__ ldns_dname_last_label_is_root_label (int const*) ;
 int ldns_rdf_data (int const*) ;
 scalar_t__ ldns_rdf_get_type (int const*) ;
 int * ldns_rdf_new_frm_data (scalar_t__,int,int) ;
 int ldns_rdf_size (int const*) ;
 int memcpy (int,int ,int) ;
 int uint8_t ;

ldns_rdf *
ldns_dname_cat_clone(const ldns_rdf *rd1, const ldns_rdf *rd2)
{
 ldns_rdf *new;
 uint16_t new_size;
 uint8_t *buf;
 uint16_t left_size;

 if (ldns_rdf_get_type(rd1) != LDNS_RDF_TYPE_DNAME ||
   ldns_rdf_get_type(rd2) != LDNS_RDF_TYPE_DNAME) {
  return ((void*)0);
 }




 left_size = ldns_rdf_size(rd1);
 if (ldns_dname_last_label_is_root_label(rd1)) {
  left_size--;
 }


 new_size = left_size + ldns_rdf_size(rd2);
 buf = LDNS_XMALLOC(uint8_t, new_size);
 if (!buf) {
  return ((void*)0);
 }


 memcpy(buf, ldns_rdf_data(rd1), left_size);
 memcpy(buf + left_size, ldns_rdf_data(rd2), ldns_rdf_size(rd2));

 new = ldns_rdf_new_frm_data(LDNS_RDF_TYPE_DNAME, new_size, buf);

 LDNS_FREE(buf);
 return new;
}
