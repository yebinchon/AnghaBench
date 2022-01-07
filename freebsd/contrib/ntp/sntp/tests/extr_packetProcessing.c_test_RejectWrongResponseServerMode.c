
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {unsigned long l_ui; unsigned long l_uf; } ;
typedef TYPE_1__ l_fp ;
struct TYPE_11__ {int xmt; } ;
struct TYPE_10__ {int org; } ;
struct TYPE_9__ {TYPE_4__ p; } ;
struct TYPE_8__ {TYPE_5__ p; } ;


 int AUTHENTICATION ;
 int ENABLED_OPT (int ) ;
 int HTONL_FP (TYPE_1__*,int *) ;
 int LEN_PKT_NOMAC ;
 int MODE_SERVER ;
 int PACKET_UNUSEABLE ;
 int TEST_ASSERT_EQUAL (int ,int ) ;
 int TEST_ASSERT_FALSE (int ) ;
 int process_pkt (TYPE_4__*,int *,int ,int ,TYPE_5__*,char*) ;
 TYPE_3__ testpkt ;
 int testsock ;
 TYPE_2__ testspkt ;

void
test_RejectWrongResponseServerMode(void)
{
 TEST_ASSERT_FALSE(ENABLED_OPT(AUTHENTICATION));

 l_fp tmp;
 tmp.l_ui = 1000UL;
 tmp.l_uf = 0UL;
 HTONL_FP(&tmp, &testpkt.p.org);

 tmp.l_ui = 2000UL;
 tmp.l_uf = 0UL;
 HTONL_FP(&tmp, &testspkt.p.xmt);

 TEST_ASSERT_EQUAL(PACKET_UNUSEABLE,
     process_pkt(&testpkt.p, &testsock, LEN_PKT_NOMAC,
          MODE_SERVER, &testspkt.p, "UnitTest"));
}
