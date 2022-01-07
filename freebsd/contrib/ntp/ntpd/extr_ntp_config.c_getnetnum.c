
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int sa_len; } ;
struct TYPE_10__ {TYPE_1__ sa; } ;
typedef TYPE_2__ sockaddr_u ;
typedef enum gnn_type { ____Placeholder_gnn_type } gnn_type ;


 scalar_t__ AF (TYPE_2__*) ;
 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 scalar_t__ AF_UNSPEC ;
 int DPRINTF (int,char*) ;
 scalar_t__ IS_IPV6 (TYPE_2__*) ;
 int NTP_PORT ;
 int REQUIRE (int) ;
 int SET_PORT (TYPE_2__*,int ) ;
 int SIZEOF_SOCKADDR (scalar_t__) ;
 int ipv6_works ;
 int is_ip_address (char const*,scalar_t__,TYPE_2__*) ;
 int stoa (TYPE_2__*) ;

__attribute__((used)) static int
getnetnum(
 const char *num,
 sockaddr_u *addr,
 int complain,
 enum gnn_type a_type
 )
{
 REQUIRE(AF_UNSPEC == AF(addr) ||
  AF_INET == AF(addr) ||
  AF_INET6 == AF(addr));

 if (!is_ip_address(num, AF(addr), addr))
  return 0;

 if (IS_IPV6(addr) && !ipv6_works)
  return -1;




 SET_PORT(addr, NTP_PORT);

 DPRINTF(2, ("getnetnum given %s, got %s\n", num, stoa(addr)));

 return 1;
}
