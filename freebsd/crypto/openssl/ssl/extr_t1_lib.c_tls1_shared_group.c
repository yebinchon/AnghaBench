
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_13__ {scalar_t__ server; int options; TYPE_3__* s3; } ;
struct TYPE_11__ {TYPE_1__* new_cipher; } ;
struct TYPE_12__ {TYPE_2__ tmp; } ;
struct TYPE_10__ {unsigned long id; } ;
typedef TYPE_4__ SSL ;


 int SSL_OP_CIPHER_SERVER_PREFERENCE ;
 int SSL_SECOP_CURVE_SHARED ;
 unsigned long TLS1_CK_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256 ;
 unsigned long TLS1_CK_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384 ;
 int TLSEXT_curve_P_256 ;
 int TLSEXT_curve_P_384 ;
 int tls1_get_peer_groups (TYPE_4__*,int const**,size_t*) ;
 int tls1_get_supported_groups (TYPE_4__*,int const**,size_t*) ;
 int tls1_in_list (int,int const*,size_t) ;
 scalar_t__ tls1_suiteb (TYPE_4__*) ;
 int tls_curve_allowed (TYPE_4__*,int,int ) ;

uint16_t tls1_shared_group(SSL *s, int nmatch)
{
    const uint16_t *pref, *supp;
    size_t num_pref, num_supp, i;
    int k;


    if (s->server == 0)
        return 0;
    if (nmatch == -2) {
        if (tls1_suiteb(s)) {




            unsigned long cid = s->s3->tmp.new_cipher->id;

            if (cid == TLS1_CK_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256)
                return TLSEXT_curve_P_256;
            if (cid == TLS1_CK_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384)
                return TLSEXT_curve_P_384;

            return 0;
        }

        nmatch = 0;
    }




    if (s->options & SSL_OP_CIPHER_SERVER_PREFERENCE) {
        tls1_get_supported_groups(s, &pref, &num_pref);
        tls1_get_peer_groups(s, &supp, &num_supp);
    } else {
        tls1_get_peer_groups(s, &pref, &num_pref);
        tls1_get_supported_groups(s, &supp, &num_supp);
    }

    for (k = 0, i = 0; i < num_pref; i++) {
        uint16_t id = pref[i];

        if (!tls1_in_list(id, supp, num_supp)
            || !tls_curve_allowed(s, id, SSL_SECOP_CURVE_SHARED))
                    continue;
        if (nmatch == k)
            return id;
         k++;
    }
    if (nmatch == -1)
        return k;

    return 0;
}
