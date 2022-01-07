
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int sockaddr_u ;
struct TYPE_5__ {TYPE_1__* dctx; int addr; int done; } ;
typedef TYPE_2__ sent_pkt ;
struct TYPE_4__ {int flags; int name; } ;




 int CTX_xCST ;
 int INSIST (int) ;
 int LOG_INFO ;
 int TRUE ;
 int dec_pending_ntp (int ,int *) ;
 int hostnameaddr (int ,int *) ;
 int msyslog (int ,char*,int ,char,int ) ;
 int response_timeout ;

void timeout_query(
 sent_pkt * spkt
 )
{
 sockaddr_u * server;
 char xcst;


 switch (spkt->dctx->flags & CTX_xCST) {
     case 129:
  xcst = 'B';
  break;

     case 128:
  xcst = 'U';
  break;

     default:
  INSIST(!"spkt->dctx->flags neither UCST nor BCST");
  break;
 }
 spkt->done = TRUE;
 server = &spkt->addr;
 msyslog(LOG_INFO, "%s no %cCST response after %d seconds",
  hostnameaddr(spkt->dctx->name, server), xcst,
  response_timeout);
 dec_pending_ntp(spkt->dctx->name, server);
 return;
}
