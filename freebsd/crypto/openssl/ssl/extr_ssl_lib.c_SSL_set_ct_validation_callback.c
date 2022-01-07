
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int * ssl_ct_validation_cb ;
struct TYPE_4__ {void* ct_validation_callback_arg; int * ct_validation_callback; int ctx; } ;
typedef TYPE_1__ SSL ;


 scalar_t__ SSL_CTX_has_client_custom_ext (int ,int ) ;
 int SSL_F_SSL_SET_CT_VALIDATION_CALLBACK ;
 int SSL_R_CUSTOM_EXT_HANDLER_ALREADY_INSTALLED ;
 int SSL_set_tlsext_status_type (TYPE_1__*,int ) ;
 int SSLerr (int ,int ) ;
 int TLSEXT_STATUSTYPE_ocsp ;
 int TLSEXT_TYPE_signed_certificate_timestamp ;

int SSL_set_ct_validation_callback(SSL *s, ssl_ct_validation_cb callback,
                                   void *arg)
{




    if (callback != ((void*)0) && SSL_CTX_has_client_custom_ext(s->ctx,
                                                          TLSEXT_TYPE_signed_certificate_timestamp))
    {
        SSLerr(SSL_F_SSL_SET_CT_VALIDATION_CALLBACK,
               SSL_R_CUSTOM_EXT_HANDLER_ALREADY_INSTALLED);
        return 0;
    }

    if (callback != ((void*)0)) {



        if (!SSL_set_tlsext_status_type(s, TLSEXT_STATUSTYPE_ocsp))
            return 0;
    }

    s->ct_validation_callback = callback;
    s->ct_validation_callback_arg = arg;

    return 1;
}
