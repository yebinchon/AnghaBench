
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_2__* session; TYPE_1__* s3; } ;
struct TYPE_8__ {int master_key; scalar_t__ master_key_length; } ;
struct TYPE_7__ {int handshake_dgst; } ;
typedef TYPE_3__ SSL ;
typedef int EVP_MD_CTX ;


 int ERR_R_INTERNAL_ERROR ;
 int ERR_R_MALLOC_FAILURE ;
 int EVP_CTRL_SSL3_MASTER_SECRET ;
 scalar_t__ EVP_DigestFinal_ex (int *,unsigned char*,int *) ;
 scalar_t__ EVP_DigestUpdate (int *,char const*,size_t) ;
 int EVP_MD_CTX_copy_ex (int *,int ) ;
 scalar_t__ EVP_MD_CTX_ctrl (int *,int ,int,int ) ;
 int EVP_MD_CTX_free (int *) ;
 int * EVP_MD_CTX_new () ;
 int EVP_MD_CTX_size (int *) ;
 scalar_t__ EVP_MD_CTX_type (int ) ;
 scalar_t__ NID_md5_sha1 ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_SSL3_FINAL_FINISH_MAC ;
 int SSL_R_NO_REQUIRED_DIGEST ;
 int SSLfatal (TYPE_3__*,int ,int ,int ) ;
 int ssl3_digest_cached_records (TYPE_3__*,int ) ;

size_t ssl3_final_finish_mac(SSL *s, const char *sender, size_t len,
                             unsigned char *p)
{
    int ret;
    EVP_MD_CTX *ctx = ((void*)0);

    if (!ssl3_digest_cached_records(s, 0)) {

        return 0;
    }

    if (EVP_MD_CTX_type(s->s3->handshake_dgst) != NID_md5_sha1) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL3_FINAL_FINISH_MAC,
                 SSL_R_NO_REQUIRED_DIGEST);
        return 0;
    }

    ctx = EVP_MD_CTX_new();
    if (ctx == ((void*)0)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL3_FINAL_FINISH_MAC,
                 ERR_R_MALLOC_FAILURE);
        return 0;
    }
    if (!EVP_MD_CTX_copy_ex(ctx, s->s3->handshake_dgst)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL3_FINAL_FINISH_MAC,
                 ERR_R_INTERNAL_ERROR);
        ret = 0;
        goto err;
    }

    ret = EVP_MD_CTX_size(ctx);
    if (ret < 0) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL3_FINAL_FINISH_MAC,
                 ERR_R_INTERNAL_ERROR);
        ret = 0;
        goto err;
    }

    if ((sender != ((void*)0) && EVP_DigestUpdate(ctx, sender, len) <= 0)
        || EVP_MD_CTX_ctrl(ctx, EVP_CTRL_SSL3_MASTER_SECRET,
                           (int)s->session->master_key_length,
                           s->session->master_key) <= 0
        || EVP_DigestFinal_ex(ctx, p, ((void*)0)) <= 0) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL3_FINAL_FINISH_MAC,
                 ERR_R_INTERNAL_ERROR);
        ret = 0;
    }

 err:
    EVP_MD_CTX_free(ctx);

    return ret;
}
