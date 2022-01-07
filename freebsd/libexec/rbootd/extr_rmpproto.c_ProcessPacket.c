
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_16__ {int rmp_seqno; int rmp_session; } ;
struct rmp_packet {int r_type; TYPE_1__ r_brq; } ;
struct TYPE_18__ {int files; } ;
struct TYPE_17__ {struct rmp_packet rmp; } ;
typedef TYPE_2__ RMPCONN ;
typedef TYPE_3__ CLIENT ;


 int AddConn (TYPE_2__*) ;
 int BootDone (TYPE_2__*) ;
 int BootFiles ;
 int EnetStr (TYPE_2__*) ;
 int FreeConn (TYPE_2__*) ;
 int LOG_WARNING ;
 TYPE_2__* NewConn (TYPE_2__*) ;



 int RMP_PROBESID ;


 int SendBootRepl (struct rmp_packet*,TYPE_2__*,int ) ;
 int SendFileNo (struct rmp_packet*,TYPE_2__*,int ) ;
 int SendReadRepl (TYPE_2__*) ;
 int SendServerID (TYPE_2__*) ;
 int WORDZE (int ) ;
 int ntohs (int ) ;
 int syslog (int ,char*,int ,...) ;

void
ProcessPacket(RMPCONN *rconn, CLIENT *client)
{
 struct rmp_packet *rmp;
 RMPCONN *rconnout;

 rmp = &rconn->rmp;

 switch(rmp->r_type) {
  case 130:
   if ((rconnout = NewConn(rconn)) == ((void*)0))
    return;
   if (ntohs(rmp->r_brq.rmp_session) == RMP_PROBESID) {
    if (WORDZE(rmp->r_brq.rmp_seqno))
     (void) SendServerID(rconnout);
    else
     (void) SendFileNo(rmp, rconnout,
                       client? client->files:
                               BootFiles);
    FreeConn(rconnout);
   } else {
    if (SendBootRepl(rmp, rconnout,
        client? client->files: BootFiles))
     AddConn(rconnout);
    else
     FreeConn(rconnout);
   }
   break;

  case 131:
   syslog(LOG_WARNING, "%s: sent a boot reply",
          EnetStr(rconn));
   break;

  case 128:



   (void) SendReadRepl(rconn);
   break;

  case 129:
   syslog(LOG_WARNING, "%s: sent a read reply",
          EnetStr(rconn));
   break;

  case 132:




   (void) BootDone(rconn);
   break;

  default:
   syslog(LOG_WARNING, "%s: unknown packet type (%u)",
          EnetStr(rconn), rmp->r_type);
 }
}
