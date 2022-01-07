
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u_int ;
struct TYPE_4__ {void* epref; void* flag; } ;
struct ccparty {struct ccconn* conn; TYPE_2__ epref; int state; } ;
struct ccconn {TYPE_1__* cc; int parties; } ;
struct TYPE_3__ {int log; } ;


 int CCLOG_PARTY_INST ;
 struct ccparty* CCZALLOC (int) ;
 int IE_SETPRESENT (TYPE_2__) ;
 int LIST_INSERT_HEAD (int *,struct ccparty*,int ) ;
 int PARTY_NULL ;
 int cc_party_log (struct ccparty*,char*,void*,void*) ;
 int link ;

struct ccparty *
cc_party_create(struct ccconn *conn, u_int ident, u_int flag)
{
 struct ccparty *party;

 party = CCZALLOC(sizeof(*party));
 if (party == ((void*)0))
  return (((void*)0));

 party->conn = conn;
 party->state = PARTY_NULL;
 IE_SETPRESENT(party->epref);
 party->epref.flag = flag;
 party->epref.epref = ident;
 LIST_INSERT_HEAD(&conn->parties, party, link);

 if (party->conn->cc->log & CCLOG_PARTY_INST)
  cc_party_log(party, "created %u.%u", flag, ident);

 return (party);
}
