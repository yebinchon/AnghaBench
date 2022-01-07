
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int p; } ;
struct TYPE_3__ {int p; } ;


 int AUTHENTICATION ;
 int ENABLED_OPT (int ) ;
 int LEN_PKT_NOMAC ;
 int MODE_SERVER ;
 int TEST_ASSERT_EQUAL (int ,int ) ;
 int TEST_ASSERT_FALSE (int ) ;
 int process_pkt (int *,int *,int ,int ,int *,char*) ;
 TYPE_2__ testpkt ;
 int testsock ;
 TYPE_1__ testspkt ;

void
test_CorrectUnauthenticatedPacket(void)
{
 TEST_ASSERT_FALSE(ENABLED_OPT(AUTHENTICATION));

 TEST_ASSERT_EQUAL(LEN_PKT_NOMAC,
     process_pkt(&testpkt.p, &testsock, LEN_PKT_NOMAC,
          MODE_SERVER, &testspkt.p, "UnitTest"));
}
