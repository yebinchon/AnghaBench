
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buffer ;
typedef int EVP_MD_CTX ;
typedef int EVP_MD ;
typedef int BIO ;


 int BIO_printf (int ,char*,int) ;
 int BIO_read (int *,unsigned char*,int) ;
 int EVP_DigestFinal (int *,unsigned char*,int *) ;
 int EVP_DigestInit (int *,int const*) ;
 int EVP_DigestUpdate (int *,unsigned char*,int) ;
 int EVP_MD_CTX_free (int *) ;
 int * EVP_MD_CTX_new () ;
 int EVP_MD_size (int const*) ;
 int OPENSSL_free (unsigned char*) ;
 unsigned char* OPENSSL_hexstr2buf (char const*,long*) ;
 unsigned char* app_malloc (int,char*) ;
 int bio_err ;

__attribute__((used)) static int create_digest(BIO *input, const char *digest, const EVP_MD *md,
                         unsigned char **md_value)
{
    int md_value_len;
    int rv = 0;
    EVP_MD_CTX *md_ctx = ((void*)0);

    md_value_len = EVP_MD_size(md);
    if (md_value_len < 0)
        return 0;

    if (input != ((void*)0)) {
        unsigned char buffer[4096];
        int length;

        md_ctx = EVP_MD_CTX_new();
        if (md_ctx == ((void*)0))
            return 0;
        *md_value = app_malloc(md_value_len, "digest buffer");
        if (!EVP_DigestInit(md_ctx, md))
            goto err;
        while ((length = BIO_read(input, buffer, sizeof(buffer))) > 0) {
            if (!EVP_DigestUpdate(md_ctx, buffer, length))
                goto err;
        }
        if (!EVP_DigestFinal(md_ctx, *md_value, ((void*)0)))
            goto err;
        md_value_len = EVP_MD_size(md);
    } else {
        long digest_len;
        *md_value = OPENSSL_hexstr2buf(digest, &digest_len);
        if (!*md_value || md_value_len != digest_len) {
            OPENSSL_free(*md_value);
            *md_value = ((void*)0);
            BIO_printf(bio_err, "bad digest, %d bytes "
                       "must be specified\n", md_value_len);
            return 0;
        }
    }
    rv = md_value_len;
 err:
    EVP_MD_CTX_free(md_ctx);
    return rv;
}
