
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct in6_addr {int dummy; } ;
struct TYPE_3__ {int peer; } ;
typedef TYPE_1__ bio_dgram_data ;




 int BIO_ADDR_family (int *) ;
 int BIO_ADDR_rawaddress (int *,struct in6_addr*,int *) ;
 int IN6_IS_ADDR_V4MAPPED (struct in6_addr*) ;

__attribute__((used)) static long dgram_get_mtu_overhead(bio_dgram_data *data)
{
    long ret;

    switch (BIO_ADDR_family(&data->peer)) {
    case 129:



        ret = 28;
        break;
    default:

        ret = 28;
        break;
    }
    return ret;
}
