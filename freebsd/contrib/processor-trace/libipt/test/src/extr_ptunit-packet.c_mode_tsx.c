
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ptunit_result {int dummy; } ;
struct packet_fixture {TYPE_5__* packet; } ;
struct TYPE_6__ {int intx; } ;
struct TYPE_7__ {TYPE_1__ tsx; } ;
struct TYPE_8__ {TYPE_2__ bits; int leaf; } ;
struct TYPE_9__ {TYPE_3__ mode; } ;
struct TYPE_10__ {TYPE_4__ payload; int type; } ;


 int pfix_test ;
 int ppt_mode ;
 int pt_mol_tsx ;
 struct ptunit_result ptu_passed () ;
 int ptu_test (int ,struct packet_fixture*) ;

__attribute__((used)) static struct ptunit_result mode_tsx(struct packet_fixture *pfix)
{
 pfix->packet[0].type = ppt_mode;
 pfix->packet[0].payload.mode.leaf = pt_mol_tsx;
 pfix->packet[0].payload.mode.bits.tsx.intx = 1;

 ptu_test(pfix_test, pfix);

 return ptu_passed();
}
