
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int refid; int stratum; } ;
struct TYPE_5__ {TYPE_3__ p; } ;
struct TYPE_4__ {int p; } ;


 int AUTHENTICATION ;
 int ENABLED_OPT (int ) ;
 int KOD_DEMOBILIZE ;
 int LEN_PKT_NOMAC ;
 int MODE_SERVER ;
 int STRATUM_PKT_UNSPEC ;
 int TEST_ASSERT_EQUAL (int ,int ) ;
 int TEST_ASSERT_FALSE (int ) ;
 int memcpy (int *,char*,int) ;
 int process_pkt (TYPE_3__*,int *,int ,int ,int *,char*) ;
 TYPE_2__ testpkt ;
 int testsock ;
 TYPE_1__ testspkt ;

void
test_KoDDeny(void)
{
 TEST_ASSERT_FALSE(ENABLED_OPT(AUTHENTICATION));

 testpkt.p.stratum = STRATUM_PKT_UNSPEC;
 memcpy(&testpkt.p.refid, "DENY", 4);

 TEST_ASSERT_EQUAL(KOD_DEMOBILIZE,
     process_pkt(&testpkt.p, &testsock, LEN_PKT_NOMAC,
          MODE_SERVER, &testspkt.p, "UnitTest"));
}
