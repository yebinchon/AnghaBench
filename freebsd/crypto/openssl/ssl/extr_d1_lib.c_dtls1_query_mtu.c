
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* d1; } ;
struct TYPE_7__ {scalar_t__ link_mtu; scalar_t__ mtu; } ;
typedef TYPE_2__ SSL ;


 int BIO_CTRL_DGRAM_QUERY_MTU ;
 int BIO_CTRL_DGRAM_SET_MTU ;
 scalar_t__ BIO_ctrl (int ,int ,long,int *) ;
 scalar_t__ BIO_dgram_get_mtu_overhead (int ) ;
 int SSL_OP_NO_QUERY_MTU ;
 int SSL_get_options (TYPE_2__*) ;
 int SSL_get_wbio (TYPE_2__*) ;
 scalar_t__ dtls1_min_mtu (TYPE_2__*) ;

int dtls1_query_mtu(SSL *s)
{
    if (s->d1->link_mtu) {
        s->d1->mtu =
            s->d1->link_mtu - BIO_dgram_get_mtu_overhead(SSL_get_wbio(s));
        s->d1->link_mtu = 0;
    }


    if (s->d1->mtu < dtls1_min_mtu(s)) {
        if (!(SSL_get_options(s) & SSL_OP_NO_QUERY_MTU)) {
            s->d1->mtu =
                BIO_ctrl(SSL_get_wbio(s), BIO_CTRL_DGRAM_QUERY_MTU, 0, ((void*)0));





            if (s->d1->mtu < dtls1_min_mtu(s)) {

                s->d1->mtu = dtls1_min_mtu(s);
                BIO_ctrl(SSL_get_wbio(s), BIO_CTRL_DGRAM_SET_MTU,
                         (long)s->d1->mtu, ((void*)0));
            }
        } else
            return 0;
    }
    return 1;
}
