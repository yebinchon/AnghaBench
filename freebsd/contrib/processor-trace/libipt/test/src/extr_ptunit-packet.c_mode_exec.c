
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
struct pt_packet_mode_exec {int csd; int csl; } ;
struct packet_fixture {TYPE_5__* packet; } ;
typedef enum pt_exec_mode { ____Placeholder_pt_exec_mode } pt_exec_mode ;
struct TYPE_6__ {int csd; int csl; } ;
struct TYPE_7__ {TYPE_1__ exec; } ;
struct TYPE_8__ {TYPE_2__ bits; int leaf; } ;
struct TYPE_9__ {TYPE_3__ mode; } ;
struct TYPE_10__ {TYPE_4__ payload; int type; } ;


 int pfix_test ;
 int ppt_mode ;
 int pt_mol_exec ;
 struct pt_packet_mode_exec pt_set_exec_mode (int) ;
 struct ptunit_result ptu_passed () ;
 int ptu_test (int ,struct packet_fixture*) ;

__attribute__((used)) static struct ptunit_result mode_exec(struct packet_fixture *pfix,
          enum pt_exec_mode mode)
{
 struct pt_packet_mode_exec packet;

 packet = pt_set_exec_mode(mode);

 pfix->packet[0].type = ppt_mode;
 pfix->packet[0].payload.mode.leaf = pt_mol_exec;
 pfix->packet[0].payload.mode.bits.exec.csl = packet.csl;
 pfix->packet[0].payload.mode.bits.exec.csd = packet.csd;

 ptu_test(pfix_test, pfix);

 return ptu_passed();
}
