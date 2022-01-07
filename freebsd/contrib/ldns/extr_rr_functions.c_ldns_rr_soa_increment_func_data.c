
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* ldns_soa_serial_increment_func_t ) (int ,void*) ;
typedef int ldns_rr ;
typedef int ldns_rdf ;


 int LDNS_FREE (int *) ;
 int LDNS_RDF_TYPE_INT32 ;
 scalar_t__ LDNS_RR_TYPE_SOA ;
 int ldns_native2rdf_int32 (int ,int ) ;
 int ldns_rdf2native_int32 (int ) ;
 scalar_t__ ldns_rr_get_type (int *) ;
 int ldns_rr_rdf (int *,int) ;
 int * ldns_rr_set_rdf (int *,int ,int) ;
 int stub1 (int ,void*) ;

void
ldns_rr_soa_increment_func_data(ldns_rr *soa,
  ldns_soa_serial_increment_func_t f, void *data)
{
 ldns_rdf *prev_soa_serial_rdf;
 if ( !soa || !f || ldns_rr_get_type(soa) != LDNS_RR_TYPE_SOA
   || !ldns_rr_rdf(soa, 2)) {
  return;
 }
 prev_soa_serial_rdf = ldns_rr_set_rdf(
    soa
  , ldns_native2rdf_int32(
     LDNS_RDF_TYPE_INT32
   , (*f)( ldns_rdf2native_int32(
     ldns_rr_rdf(soa, 2))
         , data
   )
  )
  , 2
 );
 LDNS_FREE(prev_soa_serial_rdf);
}
