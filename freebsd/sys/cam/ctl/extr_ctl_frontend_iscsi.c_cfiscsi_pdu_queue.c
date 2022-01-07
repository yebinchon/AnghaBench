
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct icl_pdu {int dummy; } ;
struct cfiscsi_session {int dummy; } ;


 int CFISCSI_SESSION_LOCK (struct cfiscsi_session*) ;
 int CFISCSI_SESSION_UNLOCK (struct cfiscsi_session*) ;
 struct cfiscsi_session* PDU_SESSION (struct icl_pdu*) ;
 int cfiscsi_pdu_prepare (struct icl_pdu*) ;
 int icl_pdu_queue (struct icl_pdu*) ;

__attribute__((used)) static void
cfiscsi_pdu_queue(struct icl_pdu *response)
{
 struct cfiscsi_session *cs;

 cs = PDU_SESSION(response);

 CFISCSI_SESSION_LOCK(cs);
 cfiscsi_pdu_prepare(response);
 icl_pdu_queue(response);
 CFISCSI_SESSION_UNLOCK(cs);
}
