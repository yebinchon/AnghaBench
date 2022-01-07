
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ldns_rdf_type ;
typedef int ldns_rdf ;


 int LDNS_RDF_SIZE_BYTE ;
 int * ldns_rdf_new_frm_data (int ,int ,int *) ;

ldns_rdf *
ldns_native2rdf_int8(ldns_rdf_type type, uint8_t value)
{
 return ldns_rdf_new_frm_data(type, LDNS_RDF_SIZE_BYTE, &value);
}
