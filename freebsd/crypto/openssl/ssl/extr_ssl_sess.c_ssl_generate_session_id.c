
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ ticket_expected; } ;
struct TYPE_14__ {int version; int lock; TYPE_2__* session_ctx; int (* generate_session_id ) (TYPE_4__*,int ,unsigned int*) ;TYPE_1__ ext; } ;
struct TYPE_13__ {unsigned int session_id_length; int session_id; } ;
struct TYPE_12__ {int lock; int (* generate_session_id ) (TYPE_4__*,int ,unsigned int*) ;} ;
typedef TYPE_3__ SSL_SESSION ;
typedef TYPE_4__ SSL ;
typedef int (* GEN_SESSION_CB ) (TYPE_4__*,int ,unsigned int*) ;


 int CRYPTO_THREAD_read_lock (int ) ;
 int CRYPTO_THREAD_unlock (int ) ;



 unsigned int SSL3_SSL_SESSION_ID_LENGTH ;

 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_SSL_GENERATE_SESSION_ID ;
 int SSL_R_SSL_SESSION_ID_CALLBACK_FAILED ;
 int SSL_R_SSL_SESSION_ID_CONFLICT ;
 int SSL_R_SSL_SESSION_ID_HAS_BAD_LENGTH ;
 int SSL_R_UNSUPPORTED_SSL_VERSION ;
 scalar_t__ SSL_has_matching_session_id (TYPE_4__*,int ,unsigned int) ;
 int SSLfatal (TYPE_4__*,int ,int ,int ) ;




 int def_generate_session_id (TYPE_4__*,int ,unsigned int*) ;
 int memset (int ,int ,unsigned int) ;

int ssl_generate_session_id(SSL *s, SSL_SESSION *ss)
{
    unsigned int tmp;
    GEN_SESSION_CB cb = def_generate_session_id;

    switch (s->version) {
    case 132:
    case 128:
    case 131:
    case 130:
    case 129:
    case 134:
    case 133:
    case 135:
        ss->session_id_length = SSL3_SSL_SESSION_ID_LENGTH;
        break;
    default:
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL_GENERATE_SESSION_ID,
                 SSL_R_UNSUPPORTED_SSL_VERSION);
        return 0;
    }
    if (s->ext.ticket_expected) {
        ss->session_id_length = 0;
        return 1;
    }


    CRYPTO_THREAD_read_lock(s->lock);
    CRYPTO_THREAD_read_lock(s->session_ctx->lock);
    if (s->generate_session_id)
        cb = s->generate_session_id;
    else if (s->session_ctx->generate_session_id)
        cb = s->session_ctx->generate_session_id;
    CRYPTO_THREAD_unlock(s->session_ctx->lock);
    CRYPTO_THREAD_unlock(s->lock);

    memset(ss->session_id, 0, ss->session_id_length);
    tmp = (int)ss->session_id_length;
    if (!cb(s, ss->session_id, &tmp)) {

        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL_GENERATE_SESSION_ID,
                 SSL_R_SSL_SESSION_ID_CALLBACK_FAILED);
        return 0;
    }




    if (tmp == 0 || tmp > ss->session_id_length) {

        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL_GENERATE_SESSION_ID,
                 SSL_R_SSL_SESSION_ID_HAS_BAD_LENGTH);
        return 0;
    }
    ss->session_id_length = tmp;

    if (SSL_has_matching_session_id(s, ss->session_id,
                                    (unsigned int)ss->session_id_length)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL_GENERATE_SESSION_ID,
                 SSL_R_SSL_SESSION_ID_CONFLICT);
        return 0;
    }

    return 1;
}
