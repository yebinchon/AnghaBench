
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* hx509_peer_info ;
struct TYPE_6__ {scalar_t__ cert; } ;


 int free (TYPE_1__*) ;
 int free_cms_alg (TYPE_1__*) ;
 int hx509_cert_free (scalar_t__) ;
 int memset (TYPE_1__*,int ,int) ;

void
hx509_peer_info_free(hx509_peer_info peer)
{
    if (peer == ((void*)0))
 return;
    if (peer->cert)
 hx509_cert_free(peer->cert);
    free_cms_alg(peer);
    memset(peer, 0, sizeof(*peer));
    free(peer);
}
