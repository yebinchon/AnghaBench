
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int key_update; } ;
typedef TYPE_1__ SSL ;


 int SSL_F_SSL_KEY_UPDATE ;
 int SSL_IS_TLS13 (TYPE_1__*) ;
 int SSL_KEY_UPDATE_NOT_REQUESTED ;
 int SSL_KEY_UPDATE_REQUESTED ;
 int SSL_R_INVALID_KEY_UPDATE_TYPE ;
 int SSL_R_STILL_IN_INIT ;
 int SSL_R_WRONG_SSL_VERSION ;
 int SSL_is_init_finished (TYPE_1__*) ;
 int SSLerr (int ,int ) ;
 int ossl_statem_set_in_init (TYPE_1__*,int) ;

int SSL_key_update(SSL *s, int updatetype)
{





    if (!SSL_IS_TLS13(s)) {
        SSLerr(SSL_F_SSL_KEY_UPDATE, SSL_R_WRONG_SSL_VERSION);
        return 0;
    }

    if (updatetype != SSL_KEY_UPDATE_NOT_REQUESTED
            && updatetype != SSL_KEY_UPDATE_REQUESTED) {
        SSLerr(SSL_F_SSL_KEY_UPDATE, SSL_R_INVALID_KEY_UPDATE_TYPE);
        return 0;
    }

    if (!SSL_is_init_finished(s)) {
        SSLerr(SSL_F_SSL_KEY_UPDATE, SSL_R_STILL_IN_INIT);
        return 0;
    }

    ossl_statem_set_in_init(s, 1);
    s->key_update = updatetype;
    return 1;
}
