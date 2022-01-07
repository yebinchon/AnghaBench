
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct in_addr {int dummy; } ;
struct in6_addr {int dummy; } ;
struct TYPE_5__ {int sun_family; int sin_family; unsigned short sin_port; int sin6_family; unsigned short sin6_port; struct in6_addr sin6_addr; struct in_addr sin_addr; int sun_path; } ;
struct TYPE_4__ {TYPE_2__ s_in6; TYPE_2__ s_in; TYPE_2__ s_un; } ;
typedef TYPE_1__ BIO_ADDR ;


 int AF_INET ;
 int AF_INET6 ;
 int AF_UNIX ;
 int memset (TYPE_2__*,int ,int) ;
 int strncpy (int ,void const*,int) ;

int BIO_ADDR_rawmake(BIO_ADDR *ap, int family,
                     const void *where, size_t wherelen,
                     unsigned short port)
{
    if (family == AF_INET) {
        if (wherelen != sizeof(struct in_addr))
            return 0;
        memset(&ap->s_in, 0, sizeof(ap->s_in));
        ap->s_in.sin_family = family;
        ap->s_in.sin_port = port;
        ap->s_in.sin_addr = *(struct in_addr *)where;
        return 1;
    }
    return 0;
}
