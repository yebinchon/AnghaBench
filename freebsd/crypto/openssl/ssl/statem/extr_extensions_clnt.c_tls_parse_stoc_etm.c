
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int X509 ;
struct TYPE_10__ {int use_etm; } ;
struct TYPE_11__ {int options; TYPE_4__ ext; TYPE_3__* s3; } ;
struct TYPE_8__ {TYPE_1__* new_cipher; } ;
struct TYPE_9__ {TYPE_2__ tmp; } ;
struct TYPE_7__ {scalar_t__ algorithm_mac; scalar_t__ algorithm_enc; } ;
typedef TYPE_5__ SSL ;
typedef int PACKET ;


 scalar_t__ SSL_AEAD ;
 int SSL_OP_NO_ENCRYPT_THEN_MAC ;
 scalar_t__ SSL_RC4 ;

int tls_parse_stoc_etm(SSL *s, PACKET *pkt, unsigned int context, X509 *x,
                       size_t chainidx)
{

    if (!(s->options & SSL_OP_NO_ENCRYPT_THEN_MAC)
            && s->s3->tmp.new_cipher->algorithm_mac != SSL_AEAD
            && s->s3->tmp.new_cipher->algorithm_enc != SSL_RC4)
        s->ext.use_etm = 1;

    return 1;
}
