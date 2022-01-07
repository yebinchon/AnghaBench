
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfiscsi_target {int ct_port; } ;
struct cfiscsi_session {int cs_ctl_initid; int cs_initiator_id; struct cfiscsi_target* cs_target; } ;


 int CFISCSI_SESSION_DEBUG (struct cfiscsi_session*,char*,int) ;
 int CFISCSI_SESSION_WARN (struct cfiscsi_session*,char*,int) ;
 int KASSERT (int,char*) ;
 int M_CTL ;
 int ctl_add_initiator (int *,int,int ,char*) ;
 char* strdup (int ,int ) ;

__attribute__((used)) static int
cfiscsi_session_register_initiator(struct cfiscsi_session *cs)
{
 struct cfiscsi_target *ct;
 char *name;
 int i;

 KASSERT(cs->cs_ctl_initid == -1, ("already registered"));

 ct = cs->cs_target;
 name = strdup(cs->cs_initiator_id, M_CTL);
 i = ctl_add_initiator(&ct->ct_port, -1, 0, name);
 if (i < 0) {
  CFISCSI_SESSION_WARN(cs, "ctl_add_initiator failed with error %d",
      i);
  cs->cs_ctl_initid = -1;
  return (1);
 }
 cs->cs_ctl_initid = i;




 return (0);
}
