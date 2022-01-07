
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_rdf ;


 int LDNS_RDF_TYPE_A ;
 int LDNS_RDF_TYPE_AAAA ;
 int * ldns_rdf_new_frm_str (int ,char const*) ;

__attribute__((used)) static ldns_rdf *
ldns_rdf_new_addr_frm_str(const char *str) {
    ldns_rdf *addr;

    if ((addr = ldns_rdf_new_frm_str(LDNS_RDF_TYPE_A, str)) == ((void*)0))
        addr = ldns_rdf_new_frm_str(LDNS_RDF_TYPE_AAAA, str);
    return addr;
}
