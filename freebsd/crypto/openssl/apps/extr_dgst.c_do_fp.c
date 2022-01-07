
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_PKEY ;
typedef int EVP_MD_CTX ;
typedef int BIO ;


 int BIO_eof (int *) ;
 int BIO_get_md_ctx (int *,int **) ;
 size_t BIO_gets (int *,char*,size_t) ;
 scalar_t__ BIO_pending (int *) ;
 int BIO_printf (int *,char*,...) ;
 int BIO_puts (int *,char const*) ;
 int BIO_read (int *,char*,size_t) ;
 int BIO_write (int *,unsigned char*,size_t) ;
 size_t BUFSIZE ;
 int ERR_print_errors (int *) ;
 int EVP_DigestSignFinal (int *,unsigned char*,size_t*) ;
 int EVP_DigestVerifyFinal (int *,unsigned char*,unsigned int) ;
 int * bio_err ;

int do_fp(BIO *out, unsigned char *buf, BIO *bp, int sep, int binout,
          EVP_PKEY *key, unsigned char *sigin, int siglen,
          const char *sig_name, const char *md_name,
          const char *file)
{
    size_t len;
    int i;

    while (BIO_pending(bp) || !BIO_eof(bp)) {
        i = BIO_read(bp, (char *)buf, BUFSIZE);
        if (i < 0) {
            BIO_printf(bio_err, "Read Error in %s\n", file);
            ERR_print_errors(bio_err);
            return 1;
        }
        if (i == 0)
            break;
    }
    if (sigin != ((void*)0)) {
        EVP_MD_CTX *ctx;
        BIO_get_md_ctx(bp, &ctx);
        i = EVP_DigestVerifyFinal(ctx, sigin, (unsigned int)siglen);
        if (i > 0) {
            BIO_printf(out, "Verified OK\n");
        } else if (i == 0) {
            BIO_printf(out, "Verification Failure\n");
            return 1;
        } else {
            BIO_printf(bio_err, "Error Verifying Data\n");
            ERR_print_errors(bio_err);
            return 1;
        }
        return 0;
    }
    if (key != ((void*)0)) {
        EVP_MD_CTX *ctx;
        BIO_get_md_ctx(bp, &ctx);
        len = BUFSIZE;
        if (!EVP_DigestSignFinal(ctx, buf, &len)) {
            BIO_printf(bio_err, "Error Signing Data\n");
            ERR_print_errors(bio_err);
            return 1;
        }
    } else {
        len = BIO_gets(bp, (char *)buf, BUFSIZE);
        if ((int)len < 0) {
            ERR_print_errors(bio_err);
            return 1;
        }
    }

    if (binout) {
        BIO_write(out, buf, len);
    } else if (sep == 2) {
        for (i = 0; i < (int)len; i++)
            BIO_printf(out, "%02x", buf[i]);
        BIO_printf(out, " *%s\n", file);
    } else {
        if (sig_name != ((void*)0)) {
            BIO_puts(out, sig_name);
            if (md_name != ((void*)0))
                BIO_printf(out, "-%s", md_name);
            BIO_printf(out, "(%s)= ", file);
        } else if (md_name != ((void*)0)) {
            BIO_printf(out, "%s(%s)= ", md_name, file);
        } else {
            BIO_printf(out, "(%s)= ", file);
        }
        for (i = 0; i < (int)len; i++) {
            if (sep && (i != 0))
                BIO_printf(out, ":");
            BIO_printf(out, "%02x", buf[i]);
        }
        BIO_printf(out, "\n");
    }
    return 0;
}
