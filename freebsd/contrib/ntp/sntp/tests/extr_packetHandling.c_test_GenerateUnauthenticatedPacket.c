
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; } ;
struct pkt {int xmt; int ppoll; int stratum; int li_vn_mode; } ;
typedef int l_fp ;


 int GETTIMEOFDAY (struct timeval*,int *) ;
 scalar_t__ JAN_1970 ;
 int LEAP_NOTINSYNC ;
 int LEN_PKT_NOMAC ;
 int LfpEquality (int ,int ) ;
 int MODE_CLIENT ;
 int NTOHL_FP (int *,int *) ;
 int NTP_VERSION ;
 int PKT_LEAP (int ) ;
 int PKT_MODE (int ) ;
 int PKT_TO_STRATUM (int ) ;
 int PKT_VERSION (int ) ;
 int STRATUM_UNSPEC ;
 int TEST_ASSERT_EQUAL (int,int ) ;
 int TEST_ASSERT_TRUE (int ) ;
 int TVTOTS (struct timeval*,int *) ;
 int generate_pkt (struct pkt*,struct timeval*,int ,int *) ;

void
test_GenerateUnauthenticatedPacket(void)
{
 struct pkt testpkt;
 struct timeval xmt;
 l_fp expected_xmt, actual_xmt;

 GETTIMEOFDAY(&xmt, ((void*)0));
 xmt.tv_sec += JAN_1970;

 TEST_ASSERT_EQUAL(LEN_PKT_NOMAC,
     generate_pkt(&testpkt, &xmt, 0, ((void*)0)));

 TEST_ASSERT_EQUAL(LEAP_NOTINSYNC, PKT_LEAP(testpkt.li_vn_mode));
 TEST_ASSERT_EQUAL(NTP_VERSION, PKT_VERSION(testpkt.li_vn_mode));
 TEST_ASSERT_EQUAL(MODE_CLIENT, PKT_MODE(testpkt.li_vn_mode));

 TEST_ASSERT_EQUAL(STRATUM_UNSPEC, PKT_TO_STRATUM(testpkt.stratum));
 TEST_ASSERT_EQUAL(8, testpkt.ppoll);

 TVTOTS(&xmt, &expected_xmt);
 NTOHL_FP(&testpkt.xmt, &actual_xmt);
 TEST_ASSERT_TRUE(LfpEquality(expected_xmt, actual_xmt));
}
