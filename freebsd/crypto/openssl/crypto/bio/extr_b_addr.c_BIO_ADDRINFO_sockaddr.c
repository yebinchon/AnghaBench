
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
struct TYPE_3__ {struct sockaddr const* bai_addr; } ;
typedef TYPE_1__ BIO_ADDRINFO ;



const struct sockaddr *BIO_ADDRINFO_sockaddr(const BIO_ADDRINFO *bai)
{
    if (bai != ((void*)0))
        return bai->bai_addr;
    return ((void*)0);
}
