
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_2__* cert; int * psk_find_session_cb; int * psk_server_callback; } ;
struct TYPE_8__ {TYPE_1__* pkeys; int * cert_cb; } ;
struct TYPE_7__ {int privatekey; } ;
typedef TYPE_3__ SSL ;
typedef int EC_KEY ;


 int EC_GROUP_get_curve_name (int ) ;
 int EC_KEY_get0_group (int *) ;
 int * EVP_PKEY_get0_EC_KEY (int ) ;

 int SSL_PKEY_ECC ;



 int SSL_PKEY_NUM ;
 int ssl_has_cert (TYPE_3__ const*,int) ;
 scalar_t__ tls_check_sigalg_curve (TYPE_3__ const*,int) ;

__attribute__((used)) static int is_tls13_capable(const SSL *s)
{
    int i;

    int curve;
    EC_KEY *eckey;



    if (s->psk_server_callback != ((void*)0))
        return 1;


    if (s->psk_find_session_cb != ((void*)0) || s->cert->cert_cb != ((void*)0))
        return 1;

    for (i = 0; i < SSL_PKEY_NUM; i++) {

        switch (i) {
        case 131:
        case 130:
        case 129:
        case 128:
            continue;
        default:
            break;
        }
        if (!ssl_has_cert(s, i))
            continue;

        if (i != SSL_PKEY_ECC)
            return 1;





        eckey = EVP_PKEY_get0_EC_KEY(s->cert->pkeys[SSL_PKEY_ECC].privatekey);
        if (eckey == ((void*)0))
            continue;
        curve = EC_GROUP_get_curve_name(EC_KEY_get0_group(eckey));
        if (tls_check_sigalg_curve(s, curve))
            return 1;



    }

    return 0;
}
