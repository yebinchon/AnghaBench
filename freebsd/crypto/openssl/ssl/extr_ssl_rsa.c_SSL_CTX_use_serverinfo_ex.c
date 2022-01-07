
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* cert; } ;
struct TYPE_7__ {TYPE_1__* key; } ;
struct TYPE_6__ {unsigned char* serverinfo; size_t serverinfo_length; } ;
typedef TYPE_3__ SSL_CTX ;


 int ERR_R_INTERNAL_ERROR ;
 int ERR_R_MALLOC_FAILURE ;
 int ERR_R_PASSED_NULL_PARAMETER ;
 unsigned char* OPENSSL_realloc (unsigned char*,size_t) ;
 int SSL_F_SSL_CTX_USE_SERVERINFO_EX ;
 int SSL_R_INVALID_SERVERINFO_DATA ;
 int SSLerr (int ,int ) ;
 int memcpy (unsigned char*,unsigned char const*,size_t) ;
 int serverinfo_process_buffer (unsigned int,unsigned char const*,size_t,TYPE_3__*) ;

int SSL_CTX_use_serverinfo_ex(SSL_CTX *ctx, unsigned int version,
                              const unsigned char *serverinfo,
                              size_t serverinfo_length)
{
    unsigned char *new_serverinfo;

    if (ctx == ((void*)0) || serverinfo == ((void*)0) || serverinfo_length == 0) {
        SSLerr(SSL_F_SSL_CTX_USE_SERVERINFO_EX, ERR_R_PASSED_NULL_PARAMETER);
        return 0;
    }
    if (!serverinfo_process_buffer(version, serverinfo, serverinfo_length,
                                   ((void*)0))) {
        SSLerr(SSL_F_SSL_CTX_USE_SERVERINFO_EX, SSL_R_INVALID_SERVERINFO_DATA);
        return 0;
    }
    if (ctx->cert->key == ((void*)0)) {
        SSLerr(SSL_F_SSL_CTX_USE_SERVERINFO_EX, ERR_R_INTERNAL_ERROR);
        return 0;
    }
    new_serverinfo = OPENSSL_realloc(ctx->cert->key->serverinfo,
                                     serverinfo_length);
    if (new_serverinfo == ((void*)0)) {
        SSLerr(SSL_F_SSL_CTX_USE_SERVERINFO_EX, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    ctx->cert->key->serverinfo = new_serverinfo;
    memcpy(ctx->cert->key->serverinfo, serverinfo, serverinfo_length);
    ctx->cert->key->serverinfo_length = serverinfo_length;





    if (!serverinfo_process_buffer(version, serverinfo, serverinfo_length,
                                   ctx)) {
        SSLerr(SSL_F_SSL_CTX_USE_SERVERINFO_EX, SSL_R_INVALID_SERVERINFO_DATA);
        return 0;
    }
    return 1;
}
