
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* s3; int * cert; } ;
struct TYPE_6__ {int peer_sigalgslen; int peer_sigalgs; int peer_cert_sigalgslen; int peer_cert_sigalgs; } ;
struct TYPE_7__ {TYPE_1__ tmp; } ;
typedef TYPE_3__ SSL ;
typedef int PACKET ;


 int SSL_USE_SIGALGS (TYPE_3__*) ;
 int tls1_save_u16 (int *,int *,int *) ;

int tls1_save_sigalgs(SSL *s, PACKET *pkt, int cert)
{

    if (!SSL_USE_SIGALGS(s))
        return 1;

    if (s->cert == ((void*)0))
        return 0;

    if (cert)
        return tls1_save_u16(pkt, &s->s3->tmp.peer_cert_sigalgs,
                             &s->s3->tmp.peer_cert_sigalgslen);
    else
        return tls1_save_u16(pkt, &s->s3->tmp.peer_sigalgs,
                             &s->s3->tmp.peer_sigalgslen);

}
