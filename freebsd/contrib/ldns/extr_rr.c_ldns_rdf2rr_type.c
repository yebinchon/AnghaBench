
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ldns_rr_type ;
typedef int ldns_rdf ;


 scalar_t__ LDNS_RDF_TYPE_TYPE ;
 scalar_t__ ldns_rdf2native_int16 (int const*) ;
 scalar_t__ ldns_rdf_get_type (int const*) ;

ldns_rr_type
ldns_rdf2rr_type(const ldns_rdf *rd)
{
        ldns_rr_type r;

        if (!rd) {
                return 0;
        }

        if (ldns_rdf_get_type(rd) != LDNS_RDF_TYPE_TYPE) {
                return 0;
        }

        r = (ldns_rr_type) ldns_rdf2native_int16(rd);
        return r;
}
