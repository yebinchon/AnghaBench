
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int epref; int flag; } ;
struct ccparty {TYPE_3__ epref; TYPE_2__* conn; } ;
struct TYPE_5__ {TYPE_1__* cc; } ;
struct TYPE_4__ {int log; } ;


 int CCFREE (struct ccparty*) ;
 int CCLOG_PARTY_INST ;
 int LIST_REMOVE (struct ccparty*,int ) ;
 int cc_party_log (struct ccparty*,char*,int ,int ) ;
 int link ;

__attribute__((used)) static void
cc_party_destroy(struct ccparty *party)
{

 if (party->conn->cc->log & CCLOG_PARTY_INST)
  cc_party_log(party, "destroyed %u.%u", party->epref.flag,
      party->epref.epref);

 LIST_REMOVE(party, link);
 CCFREE(party);
}
