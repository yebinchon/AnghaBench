
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_rdf ;


 int LDNS_RDF_TYPE_DNAME ;
 int * ldns_rdf_new_frm_str (int ,char const*) ;

ldns_rdf *
ldns_dname_new_frm_str(const char *str)
{
 return ldns_rdf_new_frm_str(LDNS_RDF_TYPE_DNAME, str);
}
