
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int token ;
typedef int ldns_rdf ;
typedef scalar_t__ ldns_algorithm ;
typedef int FILE ;
typedef int EVP_PKEY ;
typedef int EC_KEY ;
typedef int BIGNUM ;


 int * BN_bin2bn (unsigned char*,int,int *) ;
 int BN_free (int *) ;
 int EC_KEY_free (int *) ;
 int * EC_KEY_new_by_curve_name (int ) ;
 int EC_KEY_set_private_key (int *,int *) ;
 int EVP_PKEY_assign_EC_KEY (int *,int *) ;
 int EVP_PKEY_free (int *) ;
 int * EVP_PKEY_new () ;
 scalar_t__ LDNS_ECDSAP256SHA256 ;
 scalar_t__ LDNS_ECDSAP384SHA384 ;
 scalar_t__ LDNS_STATUS_OK ;
 int NID_X9_62_prime256v1 ;
 int NID_secp384r1 ;
 int ldns_EC_KEY_calc_public (int *) ;
 int ldns_fget_keyword_data_l (int *,char*,char*,char*,char*,int,int*) ;
 scalar_t__ ldns_rdf_data (int *) ;
 int ldns_rdf_deep_free (int *) ;
 scalar_t__ ldns_rdf_size (int *) ;
 scalar_t__ ldns_str2rdf_b64 (int **,char*) ;

__attribute__((used)) static EVP_PKEY*
ldns_key_new_frm_fp_ecdsa_l(FILE* fp, ldns_algorithm alg, int* line_nr)
{
 char token[16384];
        ldns_rdf* b64rdf = ((void*)0);
        unsigned char* pp;
        BIGNUM* bn;
        EVP_PKEY* evp_key;
        EC_KEY* ec;
 if (ldns_fget_keyword_data_l(fp, "PrivateKey", ": ", token, "\n",
  sizeof(token), line_nr) == -1)
  return ((void*)0);
 if(ldns_str2rdf_b64(&b64rdf, token) != LDNS_STATUS_OK)
  return ((void*)0);
        pp = (unsigned char*)ldns_rdf_data(b64rdf);

        if(alg == LDNS_ECDSAP256SHA256)
                ec = EC_KEY_new_by_curve_name(NID_X9_62_prime256v1);
        else if(alg == LDNS_ECDSAP384SHA384)
                ec = EC_KEY_new_by_curve_name(NID_secp384r1);
        else ec = ((void*)0);
        if(!ec) {
         ldns_rdf_deep_free(b64rdf);
                return ((void*)0);
        }
 bn = BN_bin2bn(pp, (int)ldns_rdf_size(b64rdf), ((void*)0));
 ldns_rdf_deep_free(b64rdf);
        if(!bn) {
                EC_KEY_free(ec);
                return ((void*)0);
        }
        EC_KEY_set_private_key(ec, bn);
        BN_free(bn);
        if(!ldns_EC_KEY_calc_public(ec)) {
                EC_KEY_free(ec);
                return ((void*)0);
        }

        evp_key = EVP_PKEY_new();
        if(!evp_key) {
                EC_KEY_free(ec);
                return ((void*)0);
        }
        if (!EVP_PKEY_assign_EC_KEY(evp_key, ec)) {
  EVP_PKEY_free(evp_key);
                EC_KEY_free(ec);
                return ((void*)0);
 }
        return evp_key;
}
