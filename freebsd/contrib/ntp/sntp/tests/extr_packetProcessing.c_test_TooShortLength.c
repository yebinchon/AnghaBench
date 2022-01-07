
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int p; } ;
struct TYPE_3__ {int p; } ;


 scalar_t__ LEN_PKT_NOMAC ;
 int MODE_BROADCAST ;
 int MODE_SERVER ;
 int PACKET_UNUSEABLE ;
 int TEST_ASSERT_EQUAL (int ,int ) ;
 int process_pkt (int *,int *,scalar_t__,int ,int *,char*) ;
 TYPE_2__ testpkt ;
 int testsock ;
 TYPE_1__ testspkt ;

void
test_TooShortLength(void)
{
 TEST_ASSERT_EQUAL(PACKET_UNUSEABLE,
     process_pkt(&testpkt.p, &testsock, LEN_PKT_NOMAC - 1,
          MODE_SERVER, &testspkt.p, "UnitTest"));
 TEST_ASSERT_EQUAL(PACKET_UNUSEABLE,
     process_pkt(&testpkt.p, &testsock, LEN_PKT_NOMAC - 1,
          MODE_BROADCAST, &testspkt.p, "UnitTest"));
}
