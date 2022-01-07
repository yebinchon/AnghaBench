
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct interface_info {TYPE_1__* client; int name; } ;
struct TYPE_2__ {int packet_length; int packet; } ;


 int REMOTE_PORT ;
 int inaddr_any ;
 int inaddr_broadcast ;
 int inet_ntoa (int ) ;
 int note (char*,int ,int ,int ) ;
 int privfd ;
 int send_packet_unpriv (int ,int *,int ,int ,int ) ;

void
send_decline(void *ipp)
{
 struct interface_info *ip = ipp;

 note("DHCPDECLINE on %s to %s port %d", ip->name,
     inet_ntoa(inaddr_broadcast), REMOTE_PORT);


 send_packet_unpriv(privfd, &ip->client->packet,
     ip->client->packet_length, inaddr_any, inaddr_broadcast);
}
