
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* hx509_peer_info ;
typedef int hx509_cert ;
struct TYPE_3__ {scalar_t__ cert; } ;


 int hx509_cert_free (scalar_t__) ;
 scalar_t__ hx509_cert_ref (int ) ;

int
hx509_peer_info_set_cert(hx509_peer_info peer,
    hx509_cert cert)
{
    if (peer->cert)
 hx509_cert_free(peer->cert);
    peer->cert = hx509_cert_ref(cert);
    return 0;
}
