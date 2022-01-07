
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int ldns_rdf ;


 int LDNS_RDF_TYPE_DNAME ;
 int * ldns_rdf_new_frm_data (int ,int ,void const*) ;

ldns_rdf *
ldns_dname_new_frm_data(uint16_t size, const void *data)
{
 return ldns_rdf_new_frm_data(LDNS_RDF_TYPE_DNAME, size, data);
}
