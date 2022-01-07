
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntlm_buf {int * data; int length; } ;
typedef int EVP_MD_CTX ;


 int ENOMEM ;
 int EVP_DigestFinal_ex (int *,int *,int *) ;
 int EVP_DigestInit_ex (int *,int ,int *) ;
 int EVP_DigestUpdate (int *,int *,int ) ;
 int * EVP_MD_CTX_create () ;
 int EVP_MD_CTX_destroy (int *) ;
 int EVP_md4 () ;
 int MD5_DIGEST_LENGTH ;
 int ascii2ucs2le (char const*,int ,struct ntlm_buf*) ;
 int heim_ntlm_free_buf (struct ntlm_buf*) ;
 int * malloc (int ) ;

int
heim_ntlm_nt_key(const char *password, struct ntlm_buf *key)
{
    struct ntlm_buf buf;
    EVP_MD_CTX *m;
    int ret;

    key->data = malloc(MD5_DIGEST_LENGTH);
    if (key->data == ((void*)0))
 return ENOMEM;
    key->length = MD5_DIGEST_LENGTH;

    ret = ascii2ucs2le(password, 0, &buf);
    if (ret) {
 heim_ntlm_free_buf(key);
 return ret;
    }

    m = EVP_MD_CTX_create();
    if (m == ((void*)0)) {
 heim_ntlm_free_buf(key);
 heim_ntlm_free_buf(&buf);
 return ENOMEM;
    }

    EVP_DigestInit_ex(m, EVP_md4(), ((void*)0));
    EVP_DigestUpdate(m, buf.data, buf.length);
    EVP_DigestFinal_ex(m, key->data, ((void*)0));
    EVP_MD_CTX_destroy(m);

    heim_ntlm_free_buf(&buf);
    return 0;
}
