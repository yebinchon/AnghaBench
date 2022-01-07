
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_rdf ;
typedef int ldns_buffer ;
typedef int RSA ;


 int LDNS_MAX_PACKETLEN ;
 int LDNS_RDF_TYPE_B64 ;
 unsigned char* MD5 (unsigned char*,int ,int *) ;
 int MD5_DIGEST_LENGTH ;
 int NID_md5 ;
 int RSA_sign (int ,unsigned char*,int ,unsigned char*,unsigned int*,int *) ;
 scalar_t__ ldns_buffer_begin (int *) ;
 int ldns_buffer_free (int *) ;
 int * ldns_buffer_new (int ) ;
 int ldns_buffer_position (int *) ;
 int * ldns_rdf_new_frm_data (int ,unsigned int,scalar_t__) ;

ldns_rdf *
ldns_sign_public_rsamd5(ldns_buffer *to_sign, RSA *key)
{
 unsigned char *md5_hash;
 unsigned int siglen;
 ldns_rdf *sigdata_rdf;
 ldns_buffer *b64sig;

 b64sig = ldns_buffer_new(LDNS_MAX_PACKETLEN);
 if (!b64sig) {
  return ((void*)0);
 }

 md5_hash = MD5((unsigned char*)ldns_buffer_begin(to_sign),
    ldns_buffer_position(to_sign), ((void*)0));
 if (!md5_hash) {
  ldns_buffer_free(b64sig);
  return ((void*)0);
 }

 RSA_sign(NID_md5, md5_hash, MD5_DIGEST_LENGTH,
      (unsigned char*)ldns_buffer_begin(b64sig),
      &siglen, key);

 sigdata_rdf = ldns_rdf_new_frm_data(LDNS_RDF_TYPE_B64, siglen,
         ldns_buffer_begin(b64sig));
 ldns_buffer_free(b64sig);
 return sigdata_rdf;
}
