
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct block {int dummy; } ;
struct TYPE_8__ {int constant_part; } ;
struct TYPE_7__ {int constant_part; } ;
struct TYPE_9__ {TYPE_2__ off_linktype; TYPE_1__ off_linkpl; } ;
typedef TYPE_3__ compiler_state_t ;


 int gen_and (struct block*,struct block*) ;
 struct block* gen_vlan_tpid_test (TYPE_3__*) ;
 struct block* gen_vlan_vid_test (TYPE_3__*,int) ;

__attribute__((used)) static struct block *
gen_vlan_no_bpf_extensions(compiler_state_t *cstate, int vlan_num)
{
 struct block *b0, *b1;

 b0 = gen_vlan_tpid_test(cstate);

 if (vlan_num >= 0) {
  b1 = gen_vlan_vid_test(cstate, vlan_num);
  gen_and(b0, b1);
  b0 = b1;
 }





 cstate->off_linkpl.constant_part += 4;
 cstate->off_linktype.constant_part += 4;

 return b0;
}
