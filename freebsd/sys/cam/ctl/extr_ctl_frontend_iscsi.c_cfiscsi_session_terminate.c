
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfiscsi_session {int cs_terminating; int cs_login_cv; int cs_maintenance_cv; } ;


 int cv_signal (int *) ;

__attribute__((used)) static void
cfiscsi_session_terminate(struct cfiscsi_session *cs)
{

 cs->cs_terminating = 1;
 cv_signal(&cs->cs_maintenance_cv);



}
