
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int u_int32_t ;
typedef int time_t ;
struct tm {int tm_hour; int tm_min; int tm_sec; } ;
struct TYPE_17__ {int rmp_retcode; int rmp_session; } ;
struct TYPE_16__ {int rmp_session; int rmp_retcode; int rmp_offset; } ;
struct TYPE_15__ {int rmp_size; int rmp_session; int rmp_retcode; int rmp_offset; } ;
struct TYPE_14__ {int rmp_flnm; int rmp_flnmsize; int rmp_version; int rmp_session; int rmp_retcode; int rmp_seqno; } ;
struct TYPE_13__ {char* rmp_machtype; int rmp_flnm; int rmp_flnmsize; int rmp_version; int rmp_session; int rmp_retcode; int rmp_seqno; } ;
struct TYPE_12__ {int dsap; int ssap; int sxsap; int dxsap; int cntrl; } ;
struct rmp_packet {int r_type; TYPE_7__ r_done; TYPE_6__ r_rrpl; TYPE_5__ r_rrq; TYPE_4__ r_brpl; TYPE_3__ r_brq; TYPE_2__ hp_llc; } ;
struct TYPE_11__ {int tv_usec; int tv_sec; } ;
struct TYPE_18__ {int rmplen; struct rmp_packet rmp; TYPE_1__ tstamp; } ;
typedef TYPE_8__ RMPCONN ;


 int DIR_RCVD ;
 int DIR_SENT ;
 int * DbgFp ;
 int DspFlnm (int ,int *) ;
 char* EnetStr (TYPE_8__*) ;
 int GETWORD (int ,int) ;
 char* IntfName ;
 int RMPREADSIZE (int ) ;



 int RMP_MACHLEN ;
 int RMP_PROBESID ;


 int SIGHUP ;
 int SIGUSR1 ;
 int SIGUSR2 ;
 int WORDZE (int ) ;
 int fflush (int *) ;
 int fprintf (int *,char const*,...) ;
 int fputc (char,int *) ;
 int fputs (char*,int *) ;
 struct tm* localtime (int *) ;
 int ntohs (int ) ;
 int sigblock (int) ;
 int sigmask (int ) ;
 int sigsetmask (int) ;

void
DispPkt(RMPCONN *rconn, int direct)
{
 static const char BootFmt[] = "\t\tRetCode:%u SeqNo:%x SessID:%x Vers:%u";
 static const char ReadFmt[] = "\t\tRetCode:%u Offset:%x SessID:%x\n";

 struct tm *tmp;
 struct rmp_packet *rmp;
 int i, omask;
 u_int32_t t;





 omask = sigblock(sigmask(SIGHUP)|sigmask(SIGUSR1)|sigmask(SIGUSR2));

 if (DbgFp == ((void*)0)) {
  (void) sigsetmask(omask);
  return;
 }


 fputs((direct==DIR_RCVD)?"<<< ":(direct==DIR_SENT)?">>> ":"", DbgFp);


 tmp = localtime((time_t *)&rconn->tstamp.tv_sec);
 fprintf(DbgFp, "%02d:%02d:%02d.%06ld   ", tmp->tm_hour, tmp->tm_min,
         tmp->tm_sec, rconn->tstamp.tv_usec);


 fprintf(DbgFp, "Addr: %s   Intf: %s\n", EnetStr(rconn), IntfName);

 rmp = &rconn->rmp;


 (void) fprintf(DbgFp, "\t802.2 LLC: DSAP:%x SSAP:%x CTRL:%x\n",
               rmp->hp_llc.dsap, rmp->hp_llc.ssap, ntohs(rmp->hp_llc.cntrl));


 (void) fprintf(DbgFp, "\tHP Ext:    DXSAP:%x SXSAP:%x\n",
                ntohs(rmp->hp_llc.dxsap), ntohs(rmp->hp_llc.sxsap));





 switch(rmp->r_type) {
  case 130:
   (void) fprintf(DbgFp, "\tBoot Request:");
   GETWORD(rmp->r_brq.rmp_seqno, t);
   if (ntohs(rmp->r_brq.rmp_session) == RMP_PROBESID) {
    if (WORDZE(rmp->r_brq.rmp_seqno))
     fputs(" (Send Server ID)", DbgFp);
    else
     fprintf(DbgFp," (Send Filename #%u)",t);
   }
   (void) fputc('\n', DbgFp);
   (void) fprintf(DbgFp, BootFmt, rmp->r_brq.rmp_retcode,
           t, ntohs(rmp->r_brq.rmp_session),
           ntohs(rmp->r_brq.rmp_version));
   (void) fprintf(DbgFp, "\n\t\tMachine Type: ");
   for (i = 0; i < RMP_MACHLEN; i++)
    (void) fputc(rmp->r_brq.rmp_machtype[i], DbgFp);
   DspFlnm(rmp->r_brq.rmp_flnmsize, &rmp->r_brq.rmp_flnm);
   break;
  case 131:
   fprintf(DbgFp, "\tBoot Reply:\n");
   GETWORD(rmp->r_brpl.rmp_seqno, t);
   (void) fprintf(DbgFp, BootFmt, rmp->r_brpl.rmp_retcode,
           t, ntohs(rmp->r_brpl.rmp_session),
           ntohs(rmp->r_brpl.rmp_version));
   DspFlnm(rmp->r_brpl.rmp_flnmsize,&rmp->r_brpl.rmp_flnm);
   break;
  case 128:
   (void) fprintf(DbgFp, "\tRead Request:\n");
   GETWORD(rmp->r_rrq.rmp_offset, t);
   (void) fprintf(DbgFp, ReadFmt, rmp->r_rrq.rmp_retcode,
           t, ntohs(rmp->r_rrq.rmp_session));
   (void) fprintf(DbgFp, "\t\tNoOfBytes: %u\n",
           ntohs(rmp->r_rrq.rmp_size));
   break;
  case 129:
   (void) fprintf(DbgFp, "\tRead Reply:\n");
   GETWORD(rmp->r_rrpl.rmp_offset, t);
   (void) fprintf(DbgFp, ReadFmt, rmp->r_rrpl.rmp_retcode,
           t, ntohs(rmp->r_rrpl.rmp_session));
   (void) fprintf(DbgFp, "\t\tNoOfBytesSent: %zu\n",
           rconn->rmplen - RMPREADSIZE(0));
   break;
  case 132:
   (void) fprintf(DbgFp, "\tBoot Complete:\n");
   (void) fprintf(DbgFp, "\t\tRetCode:%u SessID:%x\n",
           rmp->r_done.rmp_retcode,
           ntohs(rmp->r_done.rmp_session));
   break;
  default:
   (void) fprintf(DbgFp, "\tUnknown Type:(%d)\n",
    rmp->r_type);
 }
 (void) fputc('\n', DbgFp);
 (void) fflush(DbgFp);

 (void) sigsetmask(omask);
}
