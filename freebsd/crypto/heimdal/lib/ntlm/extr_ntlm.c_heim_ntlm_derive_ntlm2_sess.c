
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HMAC_CTX ;


 int ENOMEM ;
 int EVP_md5 () ;
 int HMAC_CTX_free (int *) ;
 int * HMAC_CTX_new () ;
 int HMAC_Final (int *,unsigned char*,unsigned int*) ;
 int HMAC_Init_ex (int *,unsigned char const*,int,int ,int *) ;
 int HMAC_Update (int *,unsigned char const*,size_t) ;

int
heim_ntlm_derive_ntlm2_sess(const unsigned char sessionkey[16],
       const unsigned char *clnt_nonce, size_t clnt_nonce_length,
       const unsigned char svr_chal[8],
       unsigned char derivedkey[16])
{
    unsigned int hmaclen;
    HMAC_CTX *c;


    c = HMAC_CTX_new();
    if (c == ((void*)0))
 return ENOMEM;
    HMAC_Init_ex(c, sessionkey, 16, EVP_md5(), ((void*)0));
    HMAC_Update(c, svr_chal, 8);
    HMAC_Update(c, clnt_nonce, clnt_nonce_length);
    HMAC_Final(c, derivedkey, &hmaclen);
    HMAC_CTX_free(c);
    return 0;
}
