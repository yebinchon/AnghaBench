
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct dns_ctx {char* name; int flags; } ;
struct addrinfo {char* ai_canonname; int ai_family; int ai_addr; int ai_addrlen; struct addrinfo* ai_next; } ;
struct TYPE_4__ {int addr; struct dns_ctx* dctx; } ;
typedef TYPE_1__ sent_pkt ;
typedef int SOCKET ;




 int CTX_UCST ;
 int EAI_SYSTEM ;
 int LOG_ERR ;
 int TRACE (int,char*) ;
 int check_exit_conditions () ;
 scalar_t__ check_kod (struct addrinfo const*) ;
 TYPE_1__* emalloc_zero (int) ;
 int errno ;
 int exit (int) ;
 int fprintf (int ,char*,char*,char*) ;
 char* gai_strerror (int) ;
 int ipv6_works ;
 int memcpy (int *,int ,size_t) ;
 int mfprintf (int ,char*,char*) ;
 size_t min (int ,int) ;
 int msyslog (int ,char*,int) ;
 int n_pending_dns ;
 int n_pending_ntp ;
 int queue_xmt (int ,struct dns_ctx*,TYPE_1__*,scalar_t__) ;
 int sock4 ;
 int sock6 ;
 int stderr ;

void
sntp_name_resolved(
 int rescode,
 int gai_errno,
 void * context,
 const char * name,
 const char * service,
 const struct addrinfo * hints,
 const struct addrinfo * addr
 )
{
 struct dns_ctx * dctx;
 sent_pkt * spkt;
 const struct addrinfo * ai;
 SOCKET sock;
 u_int xmt_delay_v4;
 u_int xmt_delay_v6;
 u_int xmt_delay;
 size_t octets;

 xmt_delay_v4 = 0;
 xmt_delay_v6 = 0;
 dctx = context;
 if (rescode) {







   fprintf(stderr, "%s lookup error %s\n",
    dctx->name, gai_strerror(rescode));
 } else {
  TRACE(3, ("%s [%s]\n", dctx->name,
     (addr->ai_canonname != ((void*)0))
         ? addr->ai_canonname
         : ""));

  for (ai = addr; ai != ((void*)0); ai = ai->ai_next) {

   if (check_kod(ai))
    continue;

   switch (ai->ai_family) {

   case 129:
    sock = sock4;
    xmt_delay = xmt_delay_v4;
    xmt_delay_v4++;
    break;

   case 128:
    if (!ipv6_works)
     continue;

    sock = sock6;
    xmt_delay = xmt_delay_v6;
    xmt_delay_v6++;
    break;

   default:
    msyslog(LOG_ERR, "sntp_name_resolved: unexpected ai_family: %d",
     ai->ai_family);
    exit(1);
    break;
   }





   ++n_pending_ntp;


   if (dctx->flags & CTX_UCST) {
    spkt = emalloc_zero(sizeof(*spkt));
    spkt->dctx = dctx;
    octets = min(ai->ai_addrlen, sizeof(spkt->addr));
    memcpy(&spkt->addr, ai->ai_addr, octets);
    queue_xmt(sock, dctx, spkt, xmt_delay);
   }
  }
 }

 --n_pending_dns;
 check_exit_conditions();
}
