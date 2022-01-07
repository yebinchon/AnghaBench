
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ccparty {size_t state; } ;
struct TYPE_2__ {int epref; } ;
struct ccconn {TYPE_1__ epref; } ;


 size_t CONN_SIG_SETUP_CONFIRM ;
 int PARTY_ACTIVE ;
 size_t PARTY_WAIT_SETUP_CONF ;
 int * cc_conn_sigtab ;
 struct ccparty* cc_party_find (struct ccconn*,int ) ;
 int cc_party_log (struct ccparty*,char*,int ,...) ;
 int cc_party_set_state (struct ccparty*,int ) ;
 int * ptab ;

__attribute__((used)) static void
cc_party_setup_conf(struct ccconn *conn)
{
 struct ccparty *party;

 party = cc_party_find(conn, conn->epref.epref);
 if (party == ((void*)0)) {
  cc_party_log(party, "no party for %s",
      cc_conn_sigtab[CONN_SIG_SETUP_CONFIRM]);
  return;
 }
 if (party->state != PARTY_WAIT_SETUP_CONF) {
  cc_party_log(party, "bad state=%s for signal=%s",
      ptab[party->state], cc_conn_sigtab[CONN_SIG_SETUP_CONFIRM]);
  return;
 }
 cc_party_set_state(party, PARTY_ACTIVE);
}
