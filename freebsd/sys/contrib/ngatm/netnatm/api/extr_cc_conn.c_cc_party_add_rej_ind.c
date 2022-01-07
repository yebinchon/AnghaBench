
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uni_ie_epref {int epref; } ;
struct ccparty {size_t state; } ;
struct ccconn {int user; } ;


 size_t CONN_SIG_PARTY_ADD_REJ_IND ;
 size_t PARTY_ADD_WAIT_ACK ;
 int PARTY_WAIT_DESTROY ;
 int USER_SIG_ADD_PARTY_REJ ;
 int * cc_conn_sigtab ;
 struct ccparty* cc_party_find (struct ccconn*,int ) ;
 int cc_party_log (struct ccparty*,char*,int ,...) ;
 int cc_party_set_state (struct ccparty*,int ) ;
 int cc_user_sig (int ,int ,int *,int ) ;
 int * ptab ;

__attribute__((used)) static void
cc_party_add_rej_ind(struct ccconn *conn, const struct uni_ie_epref *epref)
{
 struct ccparty *party;

 party = cc_party_find(conn, epref->epref);
 if (party == ((void*)0)) {
  cc_party_log(party, "no party for %s",
      cc_conn_sigtab[CONN_SIG_PARTY_ADD_REJ_IND]);
  return;
 }
 if (party->state != PARTY_ADD_WAIT_ACK) {
  cc_party_log(party, "bad state=%s for signal=%s",
      ptab[party->state],
      cc_conn_sigtab[CONN_SIG_PARTY_ADD_REJ_IND]);
  return;
 }
 cc_party_set_state(party, PARTY_WAIT_DESTROY);
 cc_user_sig(conn->user, USER_SIG_ADD_PARTY_REJ, ((void*)0), epref->epref);
}
