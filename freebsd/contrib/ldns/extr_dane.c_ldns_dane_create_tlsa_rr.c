
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ ldns_tlsa_selector ;
typedef scalar_t__ ldns_tlsa_matching_type ;
typedef scalar_t__ ldns_tlsa_certificate_usage ;
typedef scalar_t__ ldns_status ;
typedef int ldns_rr ;
typedef int ldns_rdf ;
typedef int X509 ;


 int LDNS_RDF_TYPE_INT8 ;
 int LDNS_RR_TYPE_TLSA ;
 scalar_t__ LDNS_STATUS_MEM_ERR ;
 scalar_t__ LDNS_STATUS_OK ;
 int assert (int ) ;
 scalar_t__ ldns_dane_cert2rdf (int **,int *,scalar_t__,scalar_t__) ;
 int * ldns_native2rdf_int8 (int ,int ) ;
 int ldns_rr_free (int *) ;
 int * ldns_rr_new_frm_type (int ) ;
 int ldns_rr_set_rdf (int *,int *,int) ;

ldns_status
ldns_dane_create_tlsa_rr(ldns_rr** tlsa,
  ldns_tlsa_certificate_usage certificate_usage,
  ldns_tlsa_selector selector,
  ldns_tlsa_matching_type matching_type,
  X509* cert)
{
 ldns_rdf* rdf;
 ldns_status s;

 assert(tlsa != ((void*)0));
 assert(cert != ((void*)0));


 *tlsa = ldns_rr_new_frm_type(LDNS_RR_TYPE_TLSA);
 if (*tlsa == ((void*)0)) {
  return LDNS_STATUS_MEM_ERR;
 }

 rdf = ldns_native2rdf_int8(LDNS_RDF_TYPE_INT8,
   (uint8_t)certificate_usage);
 if (rdf == ((void*)0)) {
  goto memerror;
 }
 (void) ldns_rr_set_rdf(*tlsa, rdf, 0);

 rdf = ldns_native2rdf_int8(LDNS_RDF_TYPE_INT8, (uint8_t)selector);
 if (rdf == ((void*)0)) {
  goto memerror;
 }
 (void) ldns_rr_set_rdf(*tlsa, rdf, 1);

 rdf = ldns_native2rdf_int8(LDNS_RDF_TYPE_INT8, (uint8_t)matching_type);
 if (rdf == ((void*)0)) {
  goto memerror;
 }
 (void) ldns_rr_set_rdf(*tlsa, rdf, 2);

 s = ldns_dane_cert2rdf(&rdf, cert, selector, matching_type);
 if (s == LDNS_STATUS_OK) {
  (void) ldns_rr_set_rdf(*tlsa, rdf, 3);
  return LDNS_STATUS_OK;
 }
 ldns_rr_free(*tlsa);
 *tlsa = ((void*)0);
 return s;

memerror:
 ldns_rr_free(*tlsa);
 *tlsa = ((void*)0);
 return LDNS_STATUS_MEM_ERR;
}
