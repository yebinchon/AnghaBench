
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
struct ifaddrs {int ifa_flags; int * ifa_addr; struct ifaddrs* ifa_next; } ;
typedef int sa_zero ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
struct TYPE_6__ {unsigned int len; int * val; } ;
typedef TYPE_1__ krb5_addresses ;


 scalar_t__ ENOMEM ;
 scalar_t__ ENXIO ;
 int EXTRA_ADDRESSES ;
 int IFF_LOOPBACK ;
 int IFF_UP ;
 int LOOP ;
 int LOOP_IF_NONE ;
 int N_ (char*,char*) ;
 int * calloc (unsigned int,int) ;
 scalar_t__ errno ;
 int free (int *) ;
 int freeifaddrs (struct ifaddrs*) ;
 int getifaddrs (struct ifaddrs**) ;
 scalar_t__ krb5_address_search (int ,int *,TYPE_1__*) ;
 int krb5_free_address (int ,int *) ;
 int krb5_free_addresses (int ,TYPE_1__*) ;
 scalar_t__ krb5_get_ignore_addresses (int ,TYPE_1__*) ;
 int krb5_set_error_message (int ,scalar_t__,char*,...) ;
 scalar_t__ krb5_sockaddr2address (int ,int *,int *) ;
 scalar_t__ krb5_sockaddr_is_loopback (int *) ;
 scalar_t__ krb5_sockaddr_uninteresting (int *) ;
 scalar_t__ memcmp (int *,struct sockaddr*,int) ;
 int memset (struct sockaddr*,int ,int) ;
 int strerror (scalar_t__) ;

__attribute__((used)) static krb5_error_code
find_all_addresses (krb5_context context, krb5_addresses *res, int flags)
{
    struct sockaddr sa_zero;
    struct ifaddrs *ifa0, *ifa;
    krb5_error_code ret = ENXIO;
    unsigned int num, idx;
    krb5_addresses ignore_addresses;

    if (getifaddrs(&ifa0) == -1) {
 ret = errno;
 krb5_set_error_message(context, ret, "getifaddrs: %s", strerror(ret));
 return (ret);
    }

    memset(&sa_zero, 0, sizeof(sa_zero));


    for (ifa = ifa0, num = 0; ifa != ((void*)0); ifa = ifa->ifa_next, num++)
              ;

    if (num == 0) {
 freeifaddrs(ifa0);
 krb5_set_error_message(context, ENXIO, N_("no addresses found", ""));
 return (ENXIO);
    }

    if (flags & EXTRA_ADDRESSES) {

 ret = krb5_get_ignore_addresses(context, &ignore_addresses);
 if(ret)
     return ret;
    }


    res->val = calloc(num, sizeof(*res->val));
    if (res->val == ((void*)0)) {
 krb5_free_addresses(context, &ignore_addresses);
 freeifaddrs(ifa0);
 krb5_set_error_message(context, ENOMEM, N_("malloc: out of memory", ""));
 return ENOMEM;
    }


    for (ifa = ifa0, idx = 0; ifa != ((void*)0); ifa = ifa->ifa_next) {
 if ((ifa->ifa_flags & IFF_UP) == 0)
     continue;
 if (ifa->ifa_addr == ((void*)0))
     continue;
 if (memcmp(ifa->ifa_addr, &sa_zero, sizeof(sa_zero)) == 0)
     continue;
 if (krb5_sockaddr_uninteresting(ifa->ifa_addr))
     continue;
 if (krb5_sockaddr_is_loopback(ifa->ifa_addr) && (flags & LOOP) == 0)

     continue;

 ret = krb5_sockaddr2address(context, ifa->ifa_addr, &res->val[idx]);
 if (ret) {






     continue;
 }

 if((flags & EXTRA_ADDRESSES) &&
    krb5_address_search(context, &res->val[idx], &ignore_addresses)) {
     krb5_free_address(context, &res->val[idx]);
     flags &= ~LOOP_IF_NONE;


     continue;
 }

 idx++;
    }





    if ((flags & LOOP_IF_NONE) != 0 && idx == 0) {
 for (ifa = ifa0; ifa != ((void*)0); ifa = ifa->ifa_next) {
     if ((ifa->ifa_flags & IFF_UP) == 0)
  continue;
     if (ifa->ifa_addr == ((void*)0))
  continue;
     if (memcmp(ifa->ifa_addr, &sa_zero, sizeof(sa_zero)) == 0)
  continue;
     if (krb5_sockaddr_uninteresting(ifa->ifa_addr))
  continue;
     if (!krb5_sockaddr_is_loopback(ifa->ifa_addr))
  continue;
     if ((ifa->ifa_flags & IFF_LOOPBACK) == 0)

  continue;
     ret = krb5_sockaddr2address(context,
     ifa->ifa_addr, &res->val[idx]);
     if (ret)
  continue;
     if((flags & EXTRA_ADDRESSES) &&
        krb5_address_search(context, &res->val[idx],
       &ignore_addresses)) {
  krb5_free_address(context, &res->val[idx]);
  continue;
     }
     idx++;
 }
    }

    if (flags & EXTRA_ADDRESSES)
 krb5_free_addresses(context, &ignore_addresses);
    freeifaddrs(ifa0);
    if (ret) {
 free(res->val);
 res->val = ((void*)0);
    } else
 res->len = idx;
    return (ret);
}
