
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {int * exten; } ;
struct TYPE_5__ {TYPE_3__ p; } ;
struct TYPE_4__ {int p; } ;


 int LEN_PKT_NOMAC ;
 int MODE_SERVER ;
 int PACKET_UNUSEABLE ;
 int TEST_ASSERT_EQUAL (int ,int ) ;
 int htonl (int) ;
 int process_pkt (TYPE_3__*,int *,int,int ,int *,char*) ;
 TYPE_2__ testpkt ;
 int testsock ;
 TYPE_1__ testspkt ;

void
test_TooShortExtensionFieldLength(void)
{





 uint32_t * pe = testpkt.p.exten + 7;





 *pe = htonl(3);





 int pkt_len = LEN_PKT_NOMAC + 4 + 24;

 TEST_ASSERT_EQUAL(PACKET_UNUSEABLE,
     process_pkt(&testpkt.p, &testsock, pkt_len,
          MODE_SERVER, &testspkt.p, "UnitTest"));
}
