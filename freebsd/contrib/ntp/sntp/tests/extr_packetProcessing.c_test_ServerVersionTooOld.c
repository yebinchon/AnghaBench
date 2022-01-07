
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
 int LEAP_NOWARNING ;
 int LEN_PKT_NOMAC ;
 int MODE_CLIENT ;
 int MODE_SERVER ;
 scalar_t__ NTP_OLDVERSION ;
 int PKT_LI_VN_MODE (int ,scalar_t__,int ) ;
 scalar_t__ PKT_VERSION (int ) ;
 int SERVER_UNUSEABLE ;
 int TEST_ASSERT_EQUAL (int ,int ) ;
 int TEST_ASSERT_FALSE (int ) ;
 int TEST_ASSERT_TRUE (int) ;
 int process_pkt (TYPE_3__*,int *,int,int ,int *,char*) ;
 TYPE_2__ testpkt ;
 int testsock ;
 TYPE_1__ testspkt ;

void
test_ServerVersionTooOld(void)
{
 TEST_ASSERT_FALSE(ENABLED_OPT(AUTHENTICATION));

 testpkt.p.li_vn_mode = PKT_LI_VN_MODE(LEAP_NOWARNING,
           NTP_OLDVERSION - 1,
           MODE_CLIENT);
 TEST_ASSERT_TRUE(PKT_VERSION(testpkt.p.li_vn_mode) < NTP_OLDVERSION);

 int pkt_len = LEN_PKT_NOMAC;

 TEST_ASSERT_EQUAL(SERVER_UNUSEABLE,
     process_pkt(&testpkt.p, &testsock, pkt_len,
          MODE_SERVER, &testspkt.p, "UnitTest"));
}
