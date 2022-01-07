
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_16__ {int sid_ctx_length; TYPE_2__* s3; int version; TYPE_3__* session; int sid_ctx; TYPE_1__* session_ctx; } ;
struct TYPE_15__ {scalar_t__ timeout; int sid_ctx_length; int flags; int verify_result; int ssl_version; int sid_ctx; scalar_t__ session_id_length; } ;
struct TYPE_14__ {int flags; } ;
struct TYPE_13__ {scalar_t__ session_timeout; } ;
typedef TYPE_3__ SSL_SESSION ;
typedef TYPE_4__ SSL ;


 int ERR_R_INTERNAL_ERROR ;
 int ERR_R_MALLOC_FAILURE ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_SSL_GET_NEW_SESSION ;
 scalar_t__ SSL_IS_TLS13 (TYPE_4__*) ;
 int SSL_SESSION_free (TYPE_3__*) ;
 TYPE_3__* SSL_SESSION_new () ;
 int SSL_SESS_FLAG_EXTMS ;
 scalar_t__ SSL_get_default_timeout (TYPE_4__*) ;
 int SSLfatal (TYPE_4__*,int ,int ,int ) ;
 int TLS1_FLAGS_RECEIVED_EXTMS ;
 int X509_V_OK ;
 int memcpy (int ,int ,int) ;
 int ssl_generate_session_id (TYPE_4__*,TYPE_3__*) ;

int ssl_get_new_session(SSL *s, int session)
{


    SSL_SESSION *ss = ((void*)0);

    if ((ss = SSL_SESSION_new()) == ((void*)0)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL_GET_NEW_SESSION,
                 ERR_R_MALLOC_FAILURE);
        return 0;
    }


    if (s->session_ctx->session_timeout == 0)
        ss->timeout = SSL_get_default_timeout(s);
    else
        ss->timeout = s->session_ctx->session_timeout;

    SSL_SESSION_free(s->session);
    s->session = ((void*)0);

    if (session) {
        if (SSL_IS_TLS13(s)) {




            ss->session_id_length = 0;
        } else if (!ssl_generate_session_id(s, ss)) {

            SSL_SESSION_free(ss);
            return 0;
        }

    } else {
        ss->session_id_length = 0;
    }

    if (s->sid_ctx_length > sizeof(ss->sid_ctx)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL_GET_NEW_SESSION,
                 ERR_R_INTERNAL_ERROR);
        SSL_SESSION_free(ss);
        return 0;
    }
    memcpy(ss->sid_ctx, s->sid_ctx, s->sid_ctx_length);
    ss->sid_ctx_length = s->sid_ctx_length;
    s->session = ss;
    ss->ssl_version = s->version;
    ss->verify_result = X509_V_OK;


    if (s->s3->flags & TLS1_FLAGS_RECEIVED_EXTMS)
        ss->flags |= SSL_SESS_FLAG_EXTMS;

    return 1;
}
