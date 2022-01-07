
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
struct ifaddrs {struct sockaddr* ifa_addr; struct ifaddrs* ifa_next; } ;
typedef scalar_t__ ULONG ;
struct TYPE_9__ {TYPE_2__* FirstUnicastAddress; struct TYPE_9__* Next; } ;
struct TYPE_7__ {struct sockaddr* lpSockaddr; } ;
struct TYPE_8__ {TYPE_1__ Address; struct TYPE_8__* Next; } ;
typedef TYPE_2__ IP_ADAPTER_UNICAST_ADDRESS ;
typedef TYPE_3__ IP_ADAPTER_ADDRESSES ;
typedef scalar_t__ HMODULE ;
typedef scalar_t__ (* GetAdaptersAddresses_fn_t ) (int ,int ,int *,TYPE_3__*,scalar_t__*) ;


 int AF_UNSPEC ;
 scalar_t__ ERROR_BUFFER_OVERFLOW ;
 int FLAGS ;
 int FreeLibrary (scalar_t__) ;
 scalar_t__ GetProcAddress (scalar_t__,char*) ;
 scalar_t__ NO_ERROR ;
 int TEXT (char*) ;
 int event_warn (char*) ;
 int evutil_found_ifaddr (struct sockaddr*) ;
 scalar_t__ evutil_load_windows_system_library_ (int ) ;
 int freeifaddrs (struct ifaddrs*) ;
 scalar_t__ getifaddrs (struct ifaddrs**) ;
 int mm_free (TYPE_3__*) ;
 TYPE_3__* mm_malloc (scalar_t__) ;

__attribute__((used)) static int
evutil_check_ifaddrs(void)
{
 return -1;

}
