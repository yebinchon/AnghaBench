
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* session; TYPE_1__* s3; } ;
struct TYPE_7__ {int master_key_length; int master_key; } ;
struct TYPE_6__ {unsigned char const* client_random; unsigned char const* server_random; } ;
typedef TYPE_3__ SSL ;


 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_clear_free (unsigned char*,size_t) ;
 unsigned char* OPENSSL_malloc (size_t) ;
 int SSL3_RANDOM_SIZE ;
 int SSL_F_TLS1_EXPORT_KEYING_MATERIAL ;
 int SSL_R_TLS_ILLEGAL_EXPORTER_LABEL ;
 int SSLerr (int ,int ) ;
 int TLS_MD_CLIENT_FINISH_CONST ;
 int TLS_MD_CLIENT_FINISH_CONST_SIZE ;
 int TLS_MD_EXTENDED_MASTER_SECRET_CONST ;
 int TLS_MD_EXTENDED_MASTER_SECRET_CONST_SIZE ;
 int TLS_MD_KEY_EXPANSION_CONST ;
 int TLS_MD_KEY_EXPANSION_CONST_SIZE ;
 int TLS_MD_MASTER_SECRET_CONST ;
 int TLS_MD_MASTER_SECRET_CONST_SIZE ;
 int TLS_MD_SERVER_FINISH_CONST ;
 int TLS_MD_SERVER_FINISH_CONST_SIZE ;
 scalar_t__ memcmp (unsigned char*,int ,int ) ;
 int memcpy (unsigned char*,unsigned char const*,size_t) ;
 int tls1_PRF (TYPE_3__*,unsigned char*,size_t,int *,int ,int *,int ,int *,int ,int *,int ,int ,int ,unsigned char*,size_t,int ) ;

int tls1_export_keying_material(SSL *s, unsigned char *out, size_t olen,
                                const char *label, size_t llen,
                                const unsigned char *context,
                                size_t contextlen, int use_context)
{
    unsigned char *val = ((void*)0);
    size_t vallen = 0, currentvalpos;
    int rv;






    vallen = llen + SSL3_RANDOM_SIZE * 2;
    if (use_context) {
        vallen += 2 + contextlen;
    }

    val = OPENSSL_malloc(vallen);
    if (val == ((void*)0))
        goto err2;
    currentvalpos = 0;
    memcpy(val + currentvalpos, (unsigned char *)label, llen);
    currentvalpos += llen;
    memcpy(val + currentvalpos, s->s3->client_random, SSL3_RANDOM_SIZE);
    currentvalpos += SSL3_RANDOM_SIZE;
    memcpy(val + currentvalpos, s->s3->server_random, SSL3_RANDOM_SIZE);
    currentvalpos += SSL3_RANDOM_SIZE;

    if (use_context) {
        val[currentvalpos] = (contextlen >> 8) & 0xff;
        currentvalpos++;
        val[currentvalpos] = contextlen & 0xff;
        currentvalpos++;
        if ((contextlen > 0) || (context != ((void*)0))) {
            memcpy(val + currentvalpos, context, contextlen);
        }
    }






    if (memcmp(val, TLS_MD_CLIENT_FINISH_CONST,
               TLS_MD_CLIENT_FINISH_CONST_SIZE) == 0)
        goto err1;
    if (memcmp(val, TLS_MD_SERVER_FINISH_CONST,
               TLS_MD_SERVER_FINISH_CONST_SIZE) == 0)
        goto err1;
    if (memcmp(val, TLS_MD_MASTER_SECRET_CONST,
               TLS_MD_MASTER_SECRET_CONST_SIZE) == 0)
        goto err1;
    if (memcmp(val, TLS_MD_EXTENDED_MASTER_SECRET_CONST,
               TLS_MD_EXTENDED_MASTER_SECRET_CONST_SIZE) == 0)
        goto err1;
    if (memcmp(val, TLS_MD_KEY_EXPANSION_CONST,
               TLS_MD_KEY_EXPANSION_CONST_SIZE) == 0)
        goto err1;

    rv = tls1_PRF(s,
                  val, vallen,
                  ((void*)0), 0,
                  ((void*)0), 0,
                  ((void*)0), 0,
                  ((void*)0), 0,
                  s->session->master_key, s->session->master_key_length,
                  out, olen, 0);

    goto ret;
 err1:
    SSLerr(SSL_F_TLS1_EXPORT_KEYING_MATERIAL, SSL_R_TLS_ILLEGAL_EXPORTER_LABEL);
    rv = 0;
    goto ret;
 err2:
    SSLerr(SSL_F_TLS1_EXPORT_KEYING_MATERIAL, ERR_R_MALLOC_FAILURE);
    rv = 0;
 ret:
    OPENSSL_clear_free(val, vallen);
    return rv;
}
