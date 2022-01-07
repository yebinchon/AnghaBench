
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int sid_ctx_length; unsigned char const* sid_ctx; } ;
typedef TYPE_1__ SSL_SESSION ;


 int SSL_F_SSL_SESSION_SET1_ID_CONTEXT ;
 unsigned int SSL_MAX_SID_CTX_LENGTH ;
 int SSL_R_SSL_SESSION_ID_CONTEXT_TOO_LONG ;
 int SSLerr (int ,int ) ;
 int memcpy (unsigned char const*,unsigned char const*,unsigned int) ;

int SSL_SESSION_set1_id_context(SSL_SESSION *s, const unsigned char *sid_ctx,
                                unsigned int sid_ctx_len)
{
    if (sid_ctx_len > SSL_MAX_SID_CTX_LENGTH) {
        SSLerr(SSL_F_SSL_SESSION_SET1_ID_CONTEXT,
               SSL_R_SSL_SESSION_ID_CONTEXT_TOO_LONG);
        return 0;
    }
    s->sid_ctx_length = sid_ctx_len;
    if (sid_ctx != s->sid_ctx)
        memcpy(s->sid_ctx, sid_ctx, sid_ctx_len);

    return 1;
}
