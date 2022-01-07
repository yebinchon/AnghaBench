
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ptunit_result {int dummy; } ;
struct packet_fixture {TYPE_3__* packet; } ;
struct TYPE_4__ {int ctc; int fc; } ;
struct TYPE_5__ {TYPE_1__ tma; } ;
struct TYPE_6__ {TYPE_2__ payload; int type; } ;


 int pfix_test ;
 int ppt_tma ;
 struct ptunit_result ptu_passed () ;
 int ptu_test (int ,struct packet_fixture*) ;

__attribute__((used)) static struct ptunit_result tma(struct packet_fixture *pfix)
{
 pfix->packet[0].type = ppt_tma;
 pfix->packet[0].payload.tma.ctc = 0x42;
 pfix->packet[0].payload.tma.fc = 0x123;

 ptu_test(pfix_test, pfix);

 return ptu_passed();
}
