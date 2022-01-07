
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntlm_buf {void* length; int * data; } ;
typedef int EVP_CIPHER_CTX ;


 int ENOMEM ;
 int EVP_CIPHER_CTX_free (int *) ;
 int * EVP_CIPHER_CTX_new () ;
 int EVP_Cipher (int *,int *,int *,void*) ;
 int EVP_CipherInit_ex (int *,int ,int *,int *,int *,int) ;
 int EVP_rc4 () ;
 int HNTLM_ERR_CRYPTO ;
 int HNTLM_ERR_RAND ;
 void* MD4_DIGEST_LENGTH ;
 int RAND_bytes (int *,void*) ;
 int heim_ntlm_free_buf (struct ntlm_buf*) ;
 void* malloc (void*) ;

int
heim_ntlm_keyex_wrap(struct ntlm_buf *base_session,
       struct ntlm_buf *session,
       struct ntlm_buf *encryptedSession)
{
    EVP_CIPHER_CTX *c;
    int ret;

    session->length = MD4_DIGEST_LENGTH;
    session->data = malloc(session->length);
    if (session->data == ((void*)0)) {
 session->length = 0;
 return ENOMEM;
    }
    encryptedSession->length = MD4_DIGEST_LENGTH;
    encryptedSession->data = malloc(encryptedSession->length);
    if (encryptedSession->data == ((void*)0)) {
 heim_ntlm_free_buf(session);
 encryptedSession->length = 0;
 return ENOMEM;
    }

    c = EVP_CIPHER_CTX_new();
    if (c == ((void*)0)) {
 heim_ntlm_free_buf(encryptedSession);
 heim_ntlm_free_buf(session);
 return ENOMEM;
    }

    ret = EVP_CipherInit_ex(c, EVP_rc4(), ((void*)0), base_session->data, ((void*)0), 1);
    if (ret != 1) {
 EVP_CIPHER_CTX_free(c);
 heim_ntlm_free_buf(encryptedSession);
 heim_ntlm_free_buf(session);
 return HNTLM_ERR_CRYPTO;
    }

    if (RAND_bytes(session->data, session->length) != 1) {
 EVP_CIPHER_CTX_free(c);
 heim_ntlm_free_buf(encryptedSession);
 heim_ntlm_free_buf(session);
 return HNTLM_ERR_RAND;
    }

    EVP_Cipher(c, encryptedSession->data, session->data, encryptedSession->length);
    EVP_CIPHER_CTX_free(c);

    return 0;



}
