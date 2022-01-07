
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int unknown_acct_types; int acct_bad_authenticators; int malformed_acct_requests; int acct_responses; int invalid_acct_requests; int acct_requests; int unknown_types; int packets_dropped; int bad_authenticators; int malformed_access_requests; int access_challenges; int access_rejects; int access_accepts; int dup_access_requests; int invalid_requests; int access_requests; } ;
struct TYPE_4__ {int sec; int usec; } ;
struct radius_server_data {scalar_t__ ipv6; struct radius_client* clients; TYPE_2__ counters; TYPE_1__ start_time; } ;
struct TYPE_6__ {int unknown_acct_types; int acct_bad_authenticators; int malformed_acct_requests; int acct_responses; int invalid_acct_requests; int acct_requests; int unknown_types; int packets_dropped; int bad_authenticators; int malformed_access_requests; int access_challenges; int access_rejects; int access_accepts; int dup_access_requests; int access_requests; } ;
struct radius_client {TYPE_3__ counters; int mask; int addr; int mask6; int addr6; struct radius_client* next; } ;
struct os_reltime {int sec; int usec; } ;
typedef int mbuf ;
typedef int abuf ;


 int AF_INET6 ;
 int inet_ntoa (int ) ;
 int * inet_ntop (int ,int *,char*,int) ;
 int os_get_reltime (struct os_reltime*) ;
 int os_snprintf (char*,int,char*,unsigned int,...) ;
 scalar_t__ os_snprintf_error (int,int) ;
 int os_strlcpy (char*,int ,int) ;

int radius_server_get_mib(struct radius_server_data *data, char *buf,
     size_t buflen)
{
 int ret, uptime;
 unsigned int idx;
 char *end, *pos;
 struct os_reltime now;
 struct radius_client *cli;



 if (data == ((void*)0) || buflen == 0)
  return 0;

 pos = buf;
 end = buf + buflen;

 os_get_reltime(&now);
 uptime = (now.sec - data->start_time.sec) * 100 +
  ((now.usec - data->start_time.usec) / 10000) % 100;
 ret = os_snprintf(pos, end - pos,
     "RADIUS-AUTH-SERVER-MIB\n"
     "radiusAuthServIdent=hostapd\n"
     "radiusAuthServUpTime=%d\n"
     "radiusAuthServResetTime=0\n"
     "radiusAuthServConfigReset=4\n",
     uptime);
 if (os_snprintf_error(end - pos, ret)) {
  *pos = '\0';
  return pos - buf;
 }
 pos += ret;

 ret = os_snprintf(pos, end - pos,
     "radiusAuthServTotalAccessRequests=%u\n"
     "radiusAuthServTotalInvalidRequests=%u\n"
     "radiusAuthServTotalDupAccessRequests=%u\n"
     "radiusAuthServTotalAccessAccepts=%u\n"
     "radiusAuthServTotalAccessRejects=%u\n"
     "radiusAuthServTotalAccessChallenges=%u\n"
     "radiusAuthServTotalMalformedAccessRequests=%u\n"
     "radiusAuthServTotalBadAuthenticators=%u\n"
     "radiusAuthServTotalPacketsDropped=%u\n"
     "radiusAuthServTotalUnknownTypes=%u\n"
     "radiusAccServTotalRequests=%u\n"
     "radiusAccServTotalInvalidRequests=%u\n"
     "radiusAccServTotalResponses=%u\n"
     "radiusAccServTotalMalformedRequests=%u\n"
     "radiusAccServTotalBadAuthenticators=%u\n"
     "radiusAccServTotalUnknownTypes=%u\n",
     data->counters.access_requests,
     data->counters.invalid_requests,
     data->counters.dup_access_requests,
     data->counters.access_accepts,
     data->counters.access_rejects,
     data->counters.access_challenges,
     data->counters.malformed_access_requests,
     data->counters.bad_authenticators,
     data->counters.packets_dropped,
     data->counters.unknown_types,
     data->counters.acct_requests,
     data->counters.invalid_acct_requests,
     data->counters.acct_responses,
     data->counters.malformed_acct_requests,
     data->counters.acct_bad_authenticators,
     data->counters.unknown_acct_types);
 if (os_snprintf_error(end - pos, ret)) {
  *pos = '\0';
  return pos - buf;
 }
 pos += ret;

 for (cli = data->clients, idx = 0; cli; cli = cli->next, idx++) {
  char abuf[50], mbuf[50];
  if (!data->ipv6) {
   os_strlcpy(abuf, inet_ntoa(cli->addr), sizeof(abuf));
   os_strlcpy(mbuf, inet_ntoa(cli->mask), sizeof(mbuf));
  }

  ret = os_snprintf(pos, end - pos,
      "radiusAuthClientIndex=%u\n"
      "radiusAuthClientAddress=%s/%s\n"
      "radiusAuthServAccessRequests=%u\n"
      "radiusAuthServDupAccessRequests=%u\n"
      "radiusAuthServAccessAccepts=%u\n"
      "radiusAuthServAccessRejects=%u\n"
      "radiusAuthServAccessChallenges=%u\n"
      "radiusAuthServMalformedAccessRequests=%u\n"
      "radiusAuthServBadAuthenticators=%u\n"
      "radiusAuthServPacketsDropped=%u\n"
      "radiusAuthServUnknownTypes=%u\n"
      "radiusAccServTotalRequests=%u\n"
      "radiusAccServTotalInvalidRequests=%u\n"
      "radiusAccServTotalResponses=%u\n"
      "radiusAccServTotalMalformedRequests=%u\n"
      "radiusAccServTotalBadAuthenticators=%u\n"
      "radiusAccServTotalUnknownTypes=%u\n",
      idx,
      abuf, mbuf,
      cli->counters.access_requests,
      cli->counters.dup_access_requests,
      cli->counters.access_accepts,
      cli->counters.access_rejects,
      cli->counters.access_challenges,
      cli->counters.malformed_access_requests,
      cli->counters.bad_authenticators,
      cli->counters.packets_dropped,
      cli->counters.unknown_types,
      cli->counters.acct_requests,
      cli->counters.invalid_acct_requests,
      cli->counters.acct_responses,
      cli->counters.malformed_acct_requests,
      cli->counters.acct_bad_authenticators,
      cli->counters.unknown_acct_types);
  if (os_snprintf_error(end - pos, ret)) {
   *pos = '\0';
   return pos - buf;
  }
  pos += ret;
 }

 return pos - buf;
}
