
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ bai_protocol; scalar_t__ bai_family; int bai_socktype; } ;
typedef TYPE_1__ BIO_ADDRINFO ;


 scalar_t__ AF_UNIX ;
 int IPPROTO_TCP ;
 int IPPROTO_UDP ;



int BIO_ADDRINFO_protocol(const BIO_ADDRINFO *bai)
{
    if (bai != ((void*)0)) {
        if (bai->bai_protocol != 0)
            return bai->bai_protocol;






        switch (bai->bai_socktype) {
        case 128:
            return IPPROTO_TCP;
        case 129:
            return IPPROTO_UDP;
        default:
            break;
        }
    }
    return 0;
}
