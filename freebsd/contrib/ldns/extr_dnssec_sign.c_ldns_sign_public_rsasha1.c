
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_rdf ;
typedef int ldns_buffer ;
typedef int RSA ;


 int LDNS_MAX_PACKETLEN ;
 int LDNS_RDF_TYPE_B64 ;
 int NID_sha1 ;
 int RSA_sign (int ,unsigned char*,int ,unsigned char*,unsigned int*,int *) ;
 unsigned char* SHA1 (unsigned char*,int ,int *) ;
 int SHA_DIGEST_LENGTH ;
 scalar_t__ ldns_buffer_begin (int *) ;
 int ldns_buffer_free (int *) ;
 int * ldns_buffer_new (int ) ;
 int ldns_buffer_position (int *) ;
 int * ldns_rdf_new_frm_data (int ,unsigned int,scalar_t__) ;

ldns_rdf *
ldns_sign_public_rsasha1(ldns_buffer *to_sign, RSA *key)
{
 unsigned char *sha1_hash;
 unsigned int siglen;
 ldns_rdf *sigdata_rdf;
 ldns_buffer *b64sig;
 int result;

 siglen = 0;
 b64sig = ldns_buffer_new(LDNS_MAX_PACKETLEN);
 if (!b64sig) {
  return ((void*)0);
 }

 sha1_hash = SHA1((unsigned char*)ldns_buffer_begin(to_sign),
      ldns_buffer_position(to_sign), ((void*)0));
 if (!sha1_hash) {
  ldns_buffer_free(b64sig);
  return ((void*)0);
 }

 result = RSA_sign(NID_sha1, sha1_hash, SHA_DIGEST_LENGTH,
       (unsigned char*)ldns_buffer_begin(b64sig),
       &siglen, key);
 if (result != 1) {
  ldns_buffer_free(b64sig);
  return ((void*)0);
 }

 sigdata_rdf = ldns_rdf_new_frm_data(LDNS_RDF_TYPE_B64, siglen,
         ldns_buffer_begin(b64sig));
 ldns_buffer_free(b64sig);
 return sigdata_rdf;
}
