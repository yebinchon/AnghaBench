
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_15__ {TYPE_5__* method; TYPE_3__* s3; TYPE_1__* session; scalar_t__ server; } ;
struct TYPE_14__ {TYPE_4__* ssl3_enc; } ;
struct TYPE_13__ {int (* change_cipher_state ) (TYPE_6__*,int) ;int (* setup_key_block ) (TYPE_6__*) ;} ;
struct TYPE_11__ {int new_cipher; int * key_block; } ;
struct TYPE_12__ {TYPE_2__ tmp; } ;
struct TYPE_10__ {scalar_t__ master_key_length; int cipher; } ;
typedef TYPE_6__ SSL ;


 int SSL3_CHANGE_CIPHER_CLIENT_READ ;
 int SSL3_CHANGE_CIPHER_SERVER_READ ;
 int SSL_F_SSL3_DO_CHANGE_CIPHER_SPEC ;
 int SSL_R_CCS_RECEIVED_EARLY ;
 int SSLerr (int ,int ) ;
 int stub1 (TYPE_6__*) ;
 int stub2 (TYPE_6__*,int) ;

int ssl3_do_change_cipher_spec(SSL *s)
{
    int i;

    if (s->server)
        i = SSL3_CHANGE_CIPHER_SERVER_READ;
    else
        i = SSL3_CHANGE_CIPHER_CLIENT_READ;

    if (s->s3->tmp.key_block == ((void*)0)) {
        if (s->session == ((void*)0) || s->session->master_key_length == 0) {

            SSLerr(SSL_F_SSL3_DO_CHANGE_CIPHER_SPEC, SSL_R_CCS_RECEIVED_EARLY);
            return 0;
        }

        s->session->cipher = s->s3->tmp.new_cipher;
        if (!s->method->ssl3_enc->setup_key_block(s))
            return 0;
    }

    if (!s->method->ssl3_enc->change_cipher_state(s, i))
        return 0;

    return 1;
}
