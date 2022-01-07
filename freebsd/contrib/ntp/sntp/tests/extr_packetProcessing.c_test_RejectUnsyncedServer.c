
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int li_vn_mode; } ;
struct TYPE_5__ {TYPE_3__ p; } ;
struct TYPE_4__ {int p; } ;


 int AUTHENTICATION ;
 int ENABLED_OPT (int ) ;
 int LEAP_NOTINSYNC ;
 int LEN_PKT_NOMAC ;
 int MODE_SERVER ;
 int NTP_VERSION ;
 int PKT_LI_VN_MODE (int ,int ,int ) ;
 int SERVER_UNUSEABLE ;
 int TEST_ASSERT_EQUAL (int ,int ) ;
 int TEST_ASSERT_FALSE (int ) ;
 int process_pkt (TYPE_3__*,int *,int ,int ,int *,char*) ;
 TYPE_2__ testpkt ;
 int testsock ;
 TYPE_1__ testspkt ;

void
test_RejectUnsyncedServer(void)
{
 TEST_ASSERT_FALSE(ENABLED_OPT(AUTHENTICATION));

 testpkt.p.li_vn_mode = PKT_LI_VN_MODE(LEAP_NOTINSYNC,
           NTP_VERSION,
           MODE_SERVER);

 TEST_ASSERT_EQUAL(SERVER_UNUSEABLE,
     process_pkt(&testpkt.p, &testsock, LEN_PKT_NOMAC,
          MODE_SERVER, &testspkt.p, "UnitTest"));
}
