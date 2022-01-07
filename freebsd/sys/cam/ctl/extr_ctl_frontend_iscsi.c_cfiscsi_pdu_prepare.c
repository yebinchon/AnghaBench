
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_bhs_scsi_response {scalar_t__ bhssr_opcode; int bhssr_initiator_task_tag; int bhssr_flags; void* bhssr_maxcmdsn; void* bhssr_expcmdsn; void* bhssr_statsn; } ;
struct icl_pdu {scalar_t__ ip_bhs; } ;
struct cfiscsi_session {int cs_statsn; int cs_cmdsn; scalar_t__ cs_outstanding_ctl_pdus; } ;


 int BHSDI_FLAGS_S ;
 int CFISCSI_SESSION_LOCK_ASSERT (struct cfiscsi_session*) ;
 scalar_t__ ISCSI_BHS_OPCODE_NOP_IN ;
 scalar_t__ ISCSI_BHS_OPCODE_R2T ;
 scalar_t__ ISCSI_BHS_OPCODE_SCSI_DATA_IN ;
 struct cfiscsi_session* PDU_SESSION (struct icl_pdu*) ;
 void* htonl (int) ;
 int imax (int ,scalar_t__) ;
 scalar_t__ maxtags ;

__attribute__((used)) static int
cfiscsi_pdu_prepare(struct icl_pdu *response)
{
 struct cfiscsi_session *cs;
 struct iscsi_bhs_scsi_response *bhssr;
 bool advance_statsn = 1;

 cs = PDU_SESSION(response);

 CFISCSI_SESSION_LOCK_ASSERT(cs);





 bhssr = (struct iscsi_bhs_scsi_response *)response->ip_bhs;





 if (bhssr->bhssr_opcode == ISCSI_BHS_OPCODE_R2T)
  advance_statsn = 0;





 if (bhssr->bhssr_opcode == ISCSI_BHS_OPCODE_NOP_IN &&
     bhssr->bhssr_initiator_task_tag == 0xffffffff)
  advance_statsn = 0;





 if (bhssr->bhssr_opcode == ISCSI_BHS_OPCODE_SCSI_DATA_IN &&
     (bhssr->bhssr_flags & BHSDI_FLAGS_S) == 0)
  advance_statsn = 0;





 if (bhssr->bhssr_opcode != ISCSI_BHS_OPCODE_SCSI_DATA_IN ||
     (bhssr->bhssr_flags & BHSDI_FLAGS_S))
  bhssr->bhssr_statsn = htonl(cs->cs_statsn);
 bhssr->bhssr_expcmdsn = htonl(cs->cs_cmdsn);
 bhssr->bhssr_maxcmdsn = htonl(cs->cs_cmdsn - 1 +
     imax(0, maxtags - cs->cs_outstanding_ctl_pdus));

 if (advance_statsn)
  cs->cs_statsn++;

 return (0);
}
