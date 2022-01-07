
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int epref; } ;
struct uni_drop_party {int cause; TYPE_1__ epref; } ;
struct TYPE_5__ {int epref; } ;
struct ccparty {int state; TYPE_2__ epref; } ;
struct ccconn {TYPE_3__* user; } ;
struct TYPE_6__ {int * cause; } ;


 size_t CONN_SIG_DROP_PARTY_ACK_IND ;



 int PARTY_WAIT_DESTROY ;


 int USER_SIG_ADD_PARTY_REJ ;
 int USER_SIG_DROP_PARTY_IND ;
 int USER_SIG_DROP_PARTY_OK ;
 int * cc_conn_sigtab ;
 struct ccparty* cc_party_find (struct ccconn*,int ) ;
 int cc_party_log (struct ccparty*,char*,int ,...) ;
 int cc_party_set_state (struct ccparty*,int ) ;
 int cc_user_sig (TYPE_3__*,int ,int *,int ) ;
 int memset (int *,int ,int) ;
 int * ptab ;

__attribute__((used)) static void
cc_party_drop_ack_ind(struct ccconn *conn,
    const struct uni_drop_party *drop)
{
 struct ccparty *party;

 party = cc_party_find(conn, drop->epref.epref);
 if (party == ((void*)0)) {
  cc_party_log(party, "no party for %s",
      cc_conn_sigtab[CONN_SIG_DROP_PARTY_ACK_IND]);
  return;
 }
 switch (party->state) {

   case 132:
  memset(&conn->user->cause[1], 0, sizeof(conn->user->cause[1]));
  conn->user->cause[0] = drop->cause;
  cc_party_set_state(party, PARTY_WAIT_DESTROY);
  cc_user_sig(conn->user, USER_SIG_DROP_PARTY_IND,
      ((void*)0), party->epref.epref);
  break;

   case 131:
  memset(&conn->user->cause[1], 0, sizeof(conn->user->cause[1]));
  conn->user->cause[0] = drop->cause;
  cc_party_set_state(party, PARTY_WAIT_DESTROY);
  cc_user_sig(conn->user, USER_SIG_ADD_PARTY_REJ,
      ((void*)0), party->epref.epref);
  break;

   case 130:
  cc_party_set_state(party, PARTY_WAIT_DESTROY);
  cc_user_sig(conn->user, USER_SIG_DROP_PARTY_OK, ((void*)0), 0);
  break;

   case 129:
   case 128:
  cc_party_set_state(party, PARTY_WAIT_DESTROY);
  break;

   default:
  cc_party_log(party, "bad state=%s for signal=%s",
      ptab[party->state],
      cc_conn_sigtab[CONN_SIG_DROP_PARTY_ACK_IND]);
  break;
 }
}
