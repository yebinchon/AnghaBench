
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntlm_buf {int * data; scalar_t__ length; } ;
typedef int EVP_MD_CTX ;


 int ENOMEM ;
 int EVP_DigestFinal_ex (int *,int *,int *) ;
 int EVP_DigestInit_ex (int *,int ,int *) ;
 int EVP_DigestUpdate (int *,void*,size_t) ;
 int * EVP_MD_CTX_create () ;
 int EVP_MD_CTX_destroy (int *) ;
 int EVP_md4 () ;
 scalar_t__ MD4_DIGEST_LENGTH ;
 int heim_ntlm_free_buf (struct ntlm_buf*) ;
 int * malloc (scalar_t__) ;

int
heim_ntlm_v1_base_session(void *key, size_t len,
     struct ntlm_buf *session)
{
    EVP_MD_CTX *m;

    session->length = MD4_DIGEST_LENGTH;
    session->data = malloc(session->length);
    if (session->data == ((void*)0)) {
 session->length = 0;
 return ENOMEM;
    }

    m = EVP_MD_CTX_create();
    if (m == ((void*)0)) {
 heim_ntlm_free_buf(session);
 return ENOMEM;
    }
    EVP_DigestInit_ex(m, EVP_md4(), ((void*)0));
    EVP_DigestUpdate(m, key, len);
    EVP_DigestFinal_ex(m, session->data, ((void*)0));
    EVP_MD_CTX_destroy(m);

    return 0;
}
