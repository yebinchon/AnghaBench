
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pkt {int li_vn_mode; } ;


 int LEAP_NOWARNING ;
 int MODE_SERVER ;
 int NTP_VERSION ;
 int PKT_LI_VN_MODE (int ,int ,int ) ;
 int TEST_ASSERT_EQUAL (int ,int ) ;
 int set_li_vn_mode (struct pkt*,int ,int ,int ) ;

void
test_SetLiVnMode1(void) {
 struct pkt expected;
 expected.li_vn_mode = PKT_LI_VN_MODE(LEAP_NOWARNING,
          NTP_VERSION,
          MODE_SERVER);

 struct pkt actual;
 set_li_vn_mode(&actual, LEAP_NOWARNING, NTP_VERSION,
       MODE_SERVER);

 TEST_ASSERT_EQUAL(expected.li_vn_mode, actual.li_vn_mode);
}
