
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32_t ;
typedef int WPACKET ;
struct TYPE_12__ {scalar_t__ version; TYPE_4__* s3; TYPE_1__* cert; } ;
struct TYPE_10__ {TYPE_2__* new_cipher; } ;
struct TYPE_11__ {TYPE_3__ tmp; } ;
struct TYPE_9__ {int algorithm_mkey; } ;
struct TYPE_8__ {int ctype_len; scalar_t__ ctype; } ;
typedef TYPE_5__ SSL ;


 int SSL3_CT_DSS_EPHEMERAL_DH ;
 int SSL3_CT_DSS_SIGN ;
 int SSL3_CT_RSA_EPHEMERAL_DH ;
 int SSL3_CT_RSA_SIGN ;
 scalar_t__ SSL3_VERSION ;
 int SSL_SECOP_SIGALG_MASK ;
 int SSL_aDSS ;
 int SSL_aECDSA ;
 int SSL_aRSA ;
 int SSL_kDHE ;
 int SSL_kGOST ;
 scalar_t__ TLS1_VERSION ;
 int TLS_CT_ECDSA_SIGN ;
 int TLS_CT_GOST01_SIGN ;
 int TLS_CT_GOST12_512_SIGN ;
 int TLS_CT_GOST12_SIGN ;
 int WPACKET_memcpy (int *,scalar_t__,int ) ;
 scalar_t__ WPACKET_put_bytes_u8 (int *,int ) ;
 int ssl_set_sig_mask (int*,TYPE_5__*,int ) ;

int ssl3_get_req_cert_type(SSL *s, WPACKET *pkt)
{
    uint32_t alg_k, alg_a = 0;


    if (s->cert->ctype)
        return WPACKET_memcpy(pkt, s->cert->ctype, s->cert->ctype_len);

    ssl_set_sig_mask(&alg_a, s, SSL_SECOP_SIGALG_MASK);

    alg_k = s->s3->tmp.new_cipher->algorithm_mkey;


    if (s->version >= TLS1_VERSION && (alg_k & SSL_kGOST))
            return WPACKET_put_bytes_u8(pkt, TLS_CT_GOST01_SIGN)
                    && WPACKET_put_bytes_u8(pkt, TLS_CT_GOST12_SIGN)
                    && WPACKET_put_bytes_u8(pkt, TLS_CT_GOST12_512_SIGN);


    if ((s->version == SSL3_VERSION) && (alg_k & SSL_kDHE)) {


        if (!WPACKET_put_bytes_u8(pkt, SSL3_CT_RSA_EPHEMERAL_DH))
            return 0;


        if (!WPACKET_put_bytes_u8(pkt, SSL3_CT_DSS_EPHEMERAL_DH))
            return 0;


    }

    if (!(alg_a & SSL_aRSA) && !WPACKET_put_bytes_u8(pkt, SSL3_CT_RSA_SIGN))
        return 0;


    if (!(alg_a & SSL_aDSS) && !WPACKET_put_bytes_u8(pkt, SSL3_CT_DSS_SIGN))
        return 0;






    if (s->version >= TLS1_VERSION
            && !(alg_a & SSL_aECDSA)
            && !WPACKET_put_bytes_u8(pkt, TLS_CT_ECDSA_SIGN))
        return 0;

    return 1;
}
