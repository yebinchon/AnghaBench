
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntlmv2_key {unsigned char* signkey; int sealkey; int * signsealkey; scalar_t__ seq; } ;
typedef int EVP_MD_CTX ;


 int EVP_DigestFinal_ex (int *,unsigned char*,int *) ;
 int EVP_DigestInit_ex (int *,int ,int *) ;
 int EVP_DigestUpdate (int *,...) ;
 int * EVP_MD_CTX_create () ;
 int EVP_MD_CTX_destroy (int *) ;
 int EVP_md5 () ;
 int RC4_set_key (int *,int,unsigned char*) ;
 char* a2i_sealmagic ;
 char* a2i_signmagic ;
 char* i2a_sealmagic ;
 char* i2a_signmagic ;
 int strlen (char const*) ;

void
_gss_ntlm_set_key(struct ntlmv2_key *key, int acceptor, int sealsign,
    unsigned char *data, size_t len)
{
    unsigned char out[16];
    EVP_MD_CTX *ctx;
    const char *signmagic;
    const char *sealmagic;

    if (acceptor) {
 signmagic = a2i_signmagic;
 sealmagic = a2i_sealmagic;
    } else {
 signmagic = i2a_signmagic;
 sealmagic = i2a_sealmagic;
    }

    key->seq = 0;

    ctx = EVP_MD_CTX_create();
    EVP_DigestInit_ex(ctx, EVP_md5(), ((void*)0));
    EVP_DigestUpdate(ctx, data, len);
    EVP_DigestUpdate(ctx, signmagic, strlen(signmagic) + 1);
    EVP_DigestFinal_ex(ctx, key->signkey, ((void*)0));

    EVP_DigestInit_ex(ctx, EVP_md5(), ((void*)0));
    EVP_DigestUpdate(ctx, data, len);
    EVP_DigestUpdate(ctx, sealmagic, strlen(sealmagic) + 1);
    EVP_DigestFinal_ex(ctx, out, ((void*)0));
    EVP_MD_CTX_destroy(ctx);

    RC4_set_key(&key->sealkey, 16, out);
    if (sealsign)
 key->signsealkey = &key->sealkey;
}
