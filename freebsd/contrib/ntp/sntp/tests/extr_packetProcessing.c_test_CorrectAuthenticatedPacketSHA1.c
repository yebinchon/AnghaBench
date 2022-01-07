
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int * exten; } ;
struct TYPE_6__ {TYPE_3__ p; } ;
struct TYPE_5__ {int p; } ;


 int AUTHENTICATION ;
 int ENABLED_OPT (int ) ;
 scalar_t__ KEY_MAC_LEN ;
 int LEN_PKT_NOMAC ;
 int MAX_MDG_LEN ;
 int MODE_SERVER ;
 int PrepareAuthenticationTest (int,int,char*,char*) ;
 int TEST_ASSERT_EQUAL (int,int ) ;
 int TEST_ASSERT_TRUE (int ) ;
 int htonl (int) ;
 int key_ptr ;
 int make_mac (TYPE_3__*,int,int ,int ,int *) ;
 int process_pkt (TYPE_3__*,int *,int,int ,int *,char*) ;
 TYPE_2__ testpkt ;
 int testsock ;
 TYPE_1__ testspkt ;

void
test_CorrectAuthenticatedPacketSHA1(void)
{
 PrepareAuthenticationTest(20, 15, "SHA1", "abcdefghijklmno");
 TEST_ASSERT_TRUE(ENABLED_OPT(AUTHENTICATION));

 int pkt_len = LEN_PKT_NOMAC;


 testpkt.p.exten[0] = htonl(20);
 int mac_len = make_mac(&testpkt.p, pkt_len,
          MAX_MDG_LEN, key_ptr,
          &testpkt.p.exten[1]);

 pkt_len += KEY_MAC_LEN + mac_len;

 TEST_ASSERT_EQUAL(pkt_len,
     process_pkt(&testpkt.p, &testsock, pkt_len,
          MODE_SERVER, &testspkt.p, "UnitTest"));
}
