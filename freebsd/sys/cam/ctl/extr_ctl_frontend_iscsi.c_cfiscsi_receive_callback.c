
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct icl_pdu {int dummy; } ;
struct cfiscsi_session {int cs_login_cv; struct icl_pdu* cs_login_pdu; scalar_t__ cs_login_phase; scalar_t__ cs_waiting_for_ctld; } ;


 struct cfiscsi_session* PDU_SESSION (struct icl_pdu*) ;
 int cfiscsi_pdu_handle (struct icl_pdu*) ;
 int cv_signal (int *) ;
 int icl_pdu_free (struct icl_pdu*) ;

__attribute__((used)) static void
cfiscsi_receive_callback(struct icl_pdu *request)
{
 cfiscsi_pdu_handle(request);
}
