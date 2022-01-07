
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ptunit_result {int dummy; } ;
struct TYPE_3__ {int leaf; } ;
struct TYPE_4__ {TYPE_1__ mode; } ;
struct pt_packet {TYPE_2__ payload; int type; } ;
struct fetch_fixture {int dummy; } ;
typedef int packet ;


 int fetch_packet ;
 int memset (struct pt_packet*,int ,int) ;
 int ppt_mode ;
 int pt_decode_mode ;
 int pt_mol_exec ;
 struct ptunit_result ptu_passed () ;
 int ptu_test (int ,struct fetch_fixture*,struct pt_packet*,int *) ;

__attribute__((used)) static struct ptunit_result fetch_mode_exec(struct fetch_fixture *ffix)
{
 struct pt_packet packet;

 memset(&packet, 0, sizeof(packet));
 packet.type = ppt_mode;
 packet.payload.mode.leaf = pt_mol_exec;

 ptu_test(fetch_packet, ffix, &packet, &pt_decode_mode);

 return ptu_passed();
}
