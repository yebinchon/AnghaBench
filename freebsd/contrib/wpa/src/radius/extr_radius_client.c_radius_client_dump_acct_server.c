
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radius_msg_list {scalar_t__ msg_type; struct radius_msg_list* next; } ;
struct radius_client_data {struct radius_msg_list* msgs; } ;
struct hostapd_radius_server {int packets_dropped; int unknown_types; int timeouts; int bad_authenticators; int malformed_responses; int responses; int retransmissions; int requests; int round_trip_time; int port; int addr; int index; } ;
typedef int abuf ;


 scalar_t__ RADIUS_ACCT ;
 scalar_t__ RADIUS_ACCT_INTERIM ;
 int hostapd_ip_txt (int *,char*,int) ;
 int os_snprintf (char*,size_t,char*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int,int ,int ,int ) ;

__attribute__((used)) static int radius_client_dump_acct_server(char *buf, size_t buflen,
       struct hostapd_radius_server *serv,
       struct radius_client_data *cli)
{
 int pending = 0;
 struct radius_msg_list *msg;
 char abuf[50];

 if (cli) {
  for (msg = cli->msgs; msg; msg = msg->next) {
   if (msg->msg_type == RADIUS_ACCT ||
       msg->msg_type == RADIUS_ACCT_INTERIM)
    pending++;
  }
 }

 return os_snprintf(buf, buflen,
      "radiusAccServerIndex=%d\n"
      "radiusAccServerAddress=%s\n"
      "radiusAccClientServerPortNumber=%d\n"
      "radiusAccClientRoundTripTime=%d\n"
      "radiusAccClientRequests=%u\n"
      "radiusAccClientRetransmissions=%u\n"
      "radiusAccClientResponses=%u\n"
      "radiusAccClientMalformedResponses=%u\n"
      "radiusAccClientBadAuthenticators=%u\n"
      "radiusAccClientPendingRequests=%u\n"
      "radiusAccClientTimeouts=%u\n"
      "radiusAccClientUnknownTypes=%u\n"
      "radiusAccClientPacketsDropped=%u\n",
      serv->index,
      hostapd_ip_txt(&serv->addr, abuf, sizeof(abuf)),
      serv->port,
      serv->round_trip_time,
      serv->requests,
      serv->retransmissions,
      serv->responses,
      serv->malformed_responses,
      serv->bad_authenticators,
      pending,
      serv->timeouts,
      serv->unknown_types,
      serv->packets_dropped);
}
