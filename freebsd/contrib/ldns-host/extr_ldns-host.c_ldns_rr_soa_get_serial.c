
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int ldns_rr ;
typedef int ldns_rdf ;


 scalar_t__ LDNS_RDF_TYPE_INT32 ;
 scalar_t__ LDNS_RR_TYPE_SOA ;
 int ldns_rdf2native_int32 (int const*) ;
 scalar_t__ ldns_rdf_get_type (int const*) ;
 int ldns_rdf_size (int const*) ;
 scalar_t__ ldns_rr_get_type (int const*) ;
 int ldns_rr_rd_count (int const*) ;
 int * ldns_rr_rdf (int const*,int) ;

__attribute__((used)) static uint32_t
ldns_rr_soa_get_serial(const ldns_rr *rr)
{
    const ldns_rdf *rdf;

    if (ldns_rr_get_type(rr) != LDNS_RR_TYPE_SOA) return 0;
    if (ldns_rr_rd_count(rr) != 7) return 0;
    rdf = ldns_rr_rdf(rr, 2);
    if (ldns_rdf_get_type(rdf) != LDNS_RDF_TYPE_INT32) return 0;
    if (ldns_rdf_size(rdf) != 4) return 0;
    return ldns_rdf2native_int32(rdf);
}
