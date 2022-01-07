
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int p; } ;
struct TYPE_3__ {int p; } ;


 int AUTHENTICATION ;
 int ActivateOption (char*,char*) ;
 int ENABLED_OPT (int ) ;
 int LEN_PKT_NOMAC ;
 int MODE_SERVER ;
 int SERVER_AUTH_FAIL ;
 int TEST_ASSERT_EQUAL (int ,int ) ;
 int TEST_ASSERT_TRUE (int ) ;
 int process_pkt (int *,int *,int,int ,int *,char*) ;
 TYPE_2__ testpkt ;
 int testsock ;
 TYPE_1__ testspkt ;

void
test_UnauthenticatedPacketReject(void)
{

 ActivateOption("-a", "123");
 TEST_ASSERT_TRUE(ENABLED_OPT(AUTHENTICATION));

 int pkt_len = LEN_PKT_NOMAC;


 TEST_ASSERT_EQUAL(SERVER_AUTH_FAIL,
     process_pkt(&testpkt.p, &testsock, pkt_len,
          MODE_SERVER, &testspkt.p, "UnitTest"));
}
