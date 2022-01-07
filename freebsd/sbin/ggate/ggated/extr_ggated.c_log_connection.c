
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct sockaddr {int dummy; } ;
typedef int in_addr_t ;


 int LOG_INFO ;
 int g_gate_log (int ,char*,int ) ;
 int htonl (int ) ;
 int ip2str (int ) ;

__attribute__((used)) static void
log_connection(struct sockaddr *from)
{
 in_addr_t ip;

 ip = htonl(((struct sockaddr_in *)(void *)from)->sin_addr.s_addr);
 g_gate_log(LOG_INFO, "Connection from: %s.", ip2str(ip));
}
