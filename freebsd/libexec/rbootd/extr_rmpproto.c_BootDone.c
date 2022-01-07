
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int rmp_session; } ;
struct TYPE_10__ {int rmp_session; } ;
struct TYPE_12__ {int rmp_session; } ;
struct rmp_packet {scalar_t__ r_type; TYPE_2__ r_rrpl; TYPE_1__ r_brpl; TYPE_3__ r_rrq; } ;
struct TYPE_13__ {struct rmp_packet rmp; } ;
typedef TYPE_4__ RMPCONN ;


 int EnetStr (TYPE_4__*) ;
 TYPE_4__* FindConn (TYPE_4__*) ;
 int LOG_ERR ;
 int LOG_INFO ;
 scalar_t__ RMP_BOOT_REPL ;
 int RemoveConn (TYPE_4__*) ;
 scalar_t__ ntohs (int ) ;
 int syslog (int ,char*,int ) ;

int
BootDone(RMPCONN *rconn)
{
 RMPCONN *oldconn;
 struct rmp_packet *rpl;




 if ((oldconn = FindConn(rconn)) == ((void*)0)) {
  syslog(LOG_ERR, "BootDone: no existing connection (%s)",
         EnetStr(rconn));
  return(0);
 }

 rpl = &oldconn->rmp;




 if (ntohs(rconn->rmp.r_rrq.rmp_session) !=
     ((rpl->r_type == RMP_BOOT_REPL)? ntohs(rpl->r_brpl.rmp_session):
                                     ntohs(rpl->r_rrpl.rmp_session))) {
  syslog(LOG_ERR, "BootDone: bad session id (%s)",
         EnetStr(rconn));
  return(0);
 }

 RemoveConn(oldconn);

 syslog(LOG_INFO, "%s: boot complete", EnetStr(rconn));

 return(1);
}
