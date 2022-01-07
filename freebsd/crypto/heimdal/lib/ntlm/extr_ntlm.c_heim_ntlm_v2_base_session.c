
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntlm_buf {int length; int * data; } ;
typedef int HMAC_CTX ;


 int ENOMEM ;
 int EVP_md5 () ;
 int HMAC_CTX_free (int *) ;
 int * HMAC_CTX_new () ;
 int HMAC_Final (int *,int *,unsigned int*) ;
 int HMAC_Init_ex (int *,void*,size_t,int ,int *) ;
 int HMAC_Update (int *,int *,int) ;
 int HNTLM_ERR_INVALID_LENGTH ;
 int heim_ntlm_free_buf (struct ntlm_buf*) ;
 int * malloc (int) ;

int
heim_ntlm_v2_base_session(void *key, size_t len,
     struct ntlm_buf *ntlmResponse,
     struct ntlm_buf *session)
{
    unsigned int hmaclen;
    HMAC_CTX *c;

    if (ntlmResponse->length <= 16)
        return HNTLM_ERR_INVALID_LENGTH;

    session->data = malloc(16);
    if (session->data == ((void*)0))
 return ENOMEM;
    session->length = 16;


    c = HMAC_CTX_new();
    if (c == ((void*)0)) {
 heim_ntlm_free_buf(session);
 return ENOMEM;
    }
    HMAC_Init_ex(c, key, len, EVP_md5(), ((void*)0));
    HMAC_Update(c, ntlmResponse->data, 16);
    HMAC_Final(c, session->data, &hmaclen);
    HMAC_CTX_free(c);

    return 0;
}
