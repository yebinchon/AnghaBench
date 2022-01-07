
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int li_vn_mode; } ;
struct TYPE_3__ {TYPE_2__ p; } ;


 int AUTHENTICATION ;
 int ENABLED_OPT (int ) ;
 int LEAP_NOWARNING ;
 int LEN_PKT_NOMAC ;
 int MODE_BROADCAST ;
 int NTP_VERSION ;
 int PKT_LI_VN_MODE (int ,int ,int ) ;
 int TEST_ASSERT_EQUAL (int ,int ) ;
 int TEST_ASSERT_FALSE (int ) ;
 int process_pkt (TYPE_2__*,int *,int ,int ,int *,char*) ;
 TYPE_1__ testpkt ;
 int testsock ;

void
test_AcceptNoSentPacketBroadcastMode(void)
{
 TEST_ASSERT_FALSE(ENABLED_OPT(AUTHENTICATION));

 testpkt.p.li_vn_mode = PKT_LI_VN_MODE(LEAP_NOWARNING,
           NTP_VERSION,
           MODE_BROADCAST);

 TEST_ASSERT_EQUAL(LEN_PKT_NOMAC,
    process_pkt(&testpkt.p, &testsock, LEN_PKT_NOMAC,
         MODE_BROADCAST, ((void*)0), "UnitTest"));
}
