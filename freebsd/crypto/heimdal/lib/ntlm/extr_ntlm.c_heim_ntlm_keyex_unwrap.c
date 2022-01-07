
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntlm_buf {scalar_t__ length; int * data; } ;
typedef int EVP_CIPHER_CTX ;


 int ENOMEM ;
 int EVP_CIPHER_CTX_free (int *) ;
 int * EVP_CIPHER_CTX_new () ;
 int EVP_Cipher (int *,int *,int *,scalar_t__) ;
 int EVP_CipherInit_ex (int *,int ,int *,int *,int *,int ) ;
 int EVP_rc4 () ;
 int HNTLM_ERR_CRYPTO ;
 int HNTLM_ERR_INVALID_LENGTH ;
 scalar_t__ MD4_DIGEST_LENGTH ;
 int heim_ntlm_free_buf (struct ntlm_buf*) ;
 int * malloc (scalar_t__) ;
 int memset (struct ntlm_buf*,int ,int) ;

int
heim_ntlm_keyex_unwrap(struct ntlm_buf *baseKey,
         struct ntlm_buf *encryptedSession,
         struct ntlm_buf *session)
{
    EVP_CIPHER_CTX *c;

    memset(session, 0, sizeof(*session));

    if (baseKey->length != MD4_DIGEST_LENGTH)
 return HNTLM_ERR_INVALID_LENGTH;

    session->length = MD4_DIGEST_LENGTH;
    session->data = malloc(session->length);
    if (session->data == ((void*)0)) {
 session->length = 0;
 return ENOMEM;
    }
    c = EVP_CIPHER_CTX_new();
    if (c == ((void*)0)) {
 heim_ntlm_free_buf(session);
 return ENOMEM;
    }

    if (EVP_CipherInit_ex(c, EVP_rc4(), ((void*)0), baseKey->data, ((void*)0), 0) != 1) {
 EVP_CIPHER_CTX_free(c);
 heim_ntlm_free_buf(session);
 return HNTLM_ERR_CRYPTO;
    }

    EVP_Cipher(c, session->data, encryptedSession->data, session->length);
    EVP_CIPHER_CTX_free(c);

    return 0;
}
