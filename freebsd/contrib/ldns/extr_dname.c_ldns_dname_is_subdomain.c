
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int const ldns_rdf ;
typedef scalar_t__ int8_t ;


 scalar_t__ LDNS_RDF_TYPE_DNAME ;
 int ldns_dname2canonical (int const*) ;
 int const* ldns_dname_clone_from (int const*,int ) ;
 int const* ldns_dname_label (int const*,scalar_t__) ;
 scalar_t__ ldns_dname_label_count (int const*) ;
 scalar_t__ ldns_rdf_compare (int const*,int const*) ;
 int ldns_rdf_deep_free (int const*) ;
 scalar_t__ ldns_rdf_get_type (int const*) ;

bool
ldns_dname_is_subdomain(const ldns_rdf *sub, const ldns_rdf *parent)
{
 uint8_t sub_lab;
 uint8_t par_lab;
 int8_t i, j;
 ldns_rdf *tmp_sub = ((void*)0);
 ldns_rdf *tmp_par = ((void*)0);
    ldns_rdf *sub_clone;
    ldns_rdf *parent_clone;
    bool result = 1;

 if (ldns_rdf_get_type(sub) != LDNS_RDF_TYPE_DNAME ||
   ldns_rdf_get_type(parent) != LDNS_RDF_TYPE_DNAME ||
   ldns_rdf_compare(sub, parent) == 0) {
  return 0;
 }


    sub_clone = ldns_dname_clone_from(sub, 0);
    parent_clone = ldns_dname_clone_from(parent, 0);
    ldns_dname2canonical(sub_clone);
    ldns_dname2canonical(parent_clone);

 sub_lab = ldns_dname_label_count(sub_clone);
 par_lab = ldns_dname_label_count(parent_clone);


 if (sub_lab < par_lab) {
  result = 0;
 } else {



  j = sub_lab - 1;
  for (i = par_lab -1; i >= 0; i--) {
   tmp_sub = ldns_dname_label(sub_clone, j);
   tmp_par = ldns_dname_label(parent_clone, i);
   if (!tmp_sub || !tmp_par) {

    ldns_rdf_deep_free(tmp_sub);
    ldns_rdf_deep_free(tmp_par);
    result = 0;
    break;
   }

   if (ldns_rdf_compare(tmp_sub, tmp_par) != 0) {

    ldns_rdf_deep_free(tmp_sub);
    ldns_rdf_deep_free(tmp_par);
    result = 0;
    break;
   }
   ldns_rdf_deep_free(tmp_sub);
   ldns_rdf_deep_free(tmp_par);
   j--;
  }
 }
 ldns_rdf_deep_free(sub_clone);
 ldns_rdf_deep_free(parent_clone);
 return result;
}
