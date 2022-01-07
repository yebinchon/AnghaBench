
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_MD_CTX ;


 int ENOMEM ;
 int EVP_DigestFinal_ex (int *,unsigned char*,int *) ;
 int EVP_DigestInit_ex (int *,int ,int *) ;
 int EVP_DigestUpdate (int *,unsigned char const*,int) ;
 int * EVP_MD_CTX_create () ;
 int EVP_MD_CTX_destroy (int *) ;
 int EVP_md5 () ;
 int MD5_DIGEST_LENGTH ;
 int memcpy (unsigned char*,unsigned char*,int) ;

int
heim_ntlm_calculate_ntlm2_sess_hash(const unsigned char clnt_nonce[8],
        const unsigned char svr_chal[8],
        unsigned char verifier[8])
{
    unsigned char ntlm2_sess_hash[MD5_DIGEST_LENGTH];
    EVP_MD_CTX *m;

    m = EVP_MD_CTX_create();
    if (m == ((void*)0))
 return ENOMEM;

    EVP_DigestInit_ex(m, EVP_md5(), ((void*)0));
    EVP_DigestUpdate(m, svr_chal, 8);
    EVP_DigestUpdate(m, clnt_nonce, 8);
    EVP_DigestFinal_ex(m, ntlm2_sess_hash, ((void*)0));
    EVP_MD_CTX_destroy(m);

    memcpy(verifier, ntlm2_sess_hash, 8);

    return 0;
}
