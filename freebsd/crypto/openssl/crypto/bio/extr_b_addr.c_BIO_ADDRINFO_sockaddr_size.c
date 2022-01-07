
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int socklen_t ;
struct TYPE_3__ {int bai_addrlen; } ;
typedef TYPE_1__ BIO_ADDRINFO ;



socklen_t BIO_ADDRINFO_sockaddr_size(const BIO_ADDRINFO *bai)
{
    if (bai != ((void*)0))
        return bai->bai_addrlen;
    return 0;
}
