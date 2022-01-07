
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bai_socktype; } ;
typedef TYPE_1__ BIO_ADDRINFO ;



int BIO_ADDRINFO_socktype(const BIO_ADDRINFO *bai)
{
    if (bai != ((void*)0))
        return bai->bai_socktype;
    return 0;
}
