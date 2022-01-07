
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_MD_CTX ;


 int EVP_DigestFinal_ex (int *,unsigned char*,int *) ;
 int EVP_DigestInit_ex (int *,int ,int *) ;
 int EVP_DigestUpdate (int *,void const*,size_t) ;
 int * EVP_MD_CTX_create () ;
 int EVP_MD_CTX_destroy (int *) ;
 int EVP_md5 () ;
 int MD5_DIGEST_LENGTH ;
 int free (char*) ;
 int hex_encode (unsigned char*,int,char**) ;
 int printf (char*,char*) ;
 int strlen (char const*) ;

__attribute__((used)) static void
client_chap(const void *server_nonce, size_t snoncelen,
     unsigned char server_identifier,
     const char *password)
{
    EVP_MD_CTX *ctx;
    unsigned char md[MD5_DIGEST_LENGTH];
    char *h;

    ctx = EVP_MD_CTX_create();
    EVP_DigestInit_ex(ctx, EVP_md5(), ((void*)0));

    EVP_DigestUpdate(ctx, &server_identifier, 1);
    EVP_DigestUpdate(ctx, password, strlen(password));
    EVP_DigestUpdate(ctx, server_nonce, snoncelen);
    EVP_DigestFinal_ex(ctx, md, ((void*)0));

    EVP_MD_CTX_destroy(ctx);

    hex_encode(md, 16, &h);

    printf("responseData=%s\n", h);
    free(h);
}
