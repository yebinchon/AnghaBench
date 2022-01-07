
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_status ;
typedef int ldns_rdf ;
typedef int ldns_key ;
typedef int ldns_buffer ;


 int LDNS_RDF_TYPE_B64 ;
 int ldns_buffer_printf (int *,char*) ;
 int ldns_key_hmac_key (int const*) ;
 size_t ldns_key_hmac_size (int const*) ;
 int ldns_rdf2buffer_str (int *,int *) ;
 int ldns_rdf_deep_free (int *) ;
 int * ldns_rdf_new_frm_data (int ,size_t,int ) ;

__attribute__((used)) static ldns_status
ldns_hmac_key2buffer_str(ldns_buffer *output, const ldns_key *k)
{
 ldns_status status;
 size_t i;
 ldns_rdf *b64_bignum;

 ldns_buffer_printf(output, "Key: ");

  i = ldns_key_hmac_size(k);
 b64_bignum = ldns_rdf_new_frm_data(LDNS_RDF_TYPE_B64, i, ldns_key_hmac_key(k));
 status = ldns_rdf2buffer_str(output, b64_bignum);
 ldns_rdf_deep_free(b64_bignum);
 ldns_buffer_printf(output, "\n");
 return status;
}
