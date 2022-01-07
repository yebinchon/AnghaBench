
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct iscsi_bhs_scsi_command {int bhssc_expstatsn; int bhssc_cmdsn; } ;
struct icl_pdu {TYPE_1__* ip_bhs; } ;
struct cfiscsi_session {scalar_t__ cs_statsn; int cs_cmdsn; scalar_t__ cs_timeout; } ;
struct TYPE_2__ {int bhs_opcode; } ;


 int CFISCSI_SESSION_DEBUG (struct cfiscsi_session*,char*,scalar_t__,scalar_t__) ;
 int CFISCSI_SESSION_LOCK (struct cfiscsi_session*) ;
 int CFISCSI_SESSION_UNLOCK (struct cfiscsi_session*) ;
 int CFISCSI_SESSION_WARN (struct cfiscsi_session*,char*,scalar_t__,int) ;
 int ISCSI_BHS_OPCODE_IMMEDIATE ;
 int ISCSI_BHS_OPCODE_SCSI_DATA_OUT ;
 scalar_t__ ISCSI_SNGT (scalar_t__,int) ;
 scalar_t__ ISCSI_SNLT (scalar_t__,int) ;
 struct cfiscsi_session* PDU_SESSION (struct icl_pdu const*) ;
 int cfiscsi_session_terminate (struct cfiscsi_session*) ;
 int maxtags ;
 scalar_t__ ntohl (int ) ;

__attribute__((used)) static bool
cfiscsi_pdu_update_cmdsn(const struct icl_pdu *request)
{
 const struct iscsi_bhs_scsi_command *bhssc;
 struct cfiscsi_session *cs;
 uint32_t cmdsn, expstatsn;

 cs = PDU_SESSION(request);
 cs->cs_timeout = 0;




 if ((request->ip_bhs->bhs_opcode & ~ISCSI_BHS_OPCODE_IMMEDIATE) ==
     ISCSI_BHS_OPCODE_SCSI_DATA_OUT)
  return (0);





 bhssc = (const struct iscsi_bhs_scsi_command *)request->ip_bhs;
 cmdsn = ntohl(bhssc->bhssc_cmdsn);
 expstatsn = ntohl(bhssc->bhssc_expstatsn);

 CFISCSI_SESSION_LOCK(cs);
 if ((request->ip_bhs->bhs_opcode & ISCSI_BHS_OPCODE_IMMEDIATE) == 0) {




  if (ISCSI_SNLT(cmdsn, cs->cs_cmdsn) ||
      ISCSI_SNGT(cmdsn, cs->cs_cmdsn - 1 + maxtags)) {
   CFISCSI_SESSION_UNLOCK(cs);
   CFISCSI_SESSION_WARN(cs, "received PDU with CmdSN %u, "
       "while expected %u", cmdsn, cs->cs_cmdsn);
   return (1);
  }






  if (cmdsn != cs->cs_cmdsn) {
   CFISCSI_SESSION_UNLOCK(cs);
   CFISCSI_SESSION_WARN(cs, "received PDU with CmdSN %u, "
       "while expected %u; dropping connection",
       cmdsn, cs->cs_cmdsn);
   cfiscsi_session_terminate(cs);
   return (1);
  }
  cs->cs_cmdsn++;
 }

 CFISCSI_SESSION_UNLOCK(cs);

 return (0);
}
