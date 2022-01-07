
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int bio_chain; struct TYPE_4__* cache_peer_serv; struct TYPE_4__* cache_peer_name; struct TYPE_4__* cache_accepting_serv; struct TYPE_4__* cache_accepting_name; int addr_first; struct TYPE_4__* param_serv; struct TYPE_4__* param_addr; } ;
typedef TYPE_1__ BIO_ACCEPT ;


 int BIO_ADDRINFO_free (int ) ;
 int BIO_free (int ) ;
 int OPENSSL_free (TYPE_1__*) ;

__attribute__((used)) static void BIO_ACCEPT_free(BIO_ACCEPT *a)
{
    if (a == ((void*)0))
        return;
    OPENSSL_free(a->param_addr);
    OPENSSL_free(a->param_serv);
    BIO_ADDRINFO_free(a->addr_first);
    OPENSSL_free(a->cache_accepting_name);
    OPENSSL_free(a->cache_accepting_serv);
    OPENSSL_free(a->cache_peer_name);
    OPENSSL_free(a->cache_peer_serv);
    BIO_free(a->bio_chain);
    OPENSSL_free(a);
}
