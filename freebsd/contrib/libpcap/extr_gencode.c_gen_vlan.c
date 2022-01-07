
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct block {int dummy; } ;
struct TYPE_10__ {int constant_part; } ;
struct TYPE_9__ {int constant_part; int is_variable; } ;
struct TYPE_12__ {scalar_t__ label_stack_depth; int linktype; scalar_t__ vlan_stack_depth; TYPE_3__* bpf_pcap; TYPE_2__ off_outermostlinkhdr; TYPE_1__ off_linkhdr; } ;
typedef TYPE_4__ compiler_state_t ;
struct TYPE_11__ {int bpf_codegen_flags; } ;


 int BPF_SPECIAL_VLAN_HANDLING ;







 int bpf_error (TYPE_4__*,char*,...) ;
 struct block* gen_vlan_bpf_extensions (TYPE_4__*,int) ;
 struct block* gen_vlan_no_bpf_extensions (TYPE_4__*,int) ;

struct block *
gen_vlan(compiler_state_t *cstate, int vlan_num)
{
 struct block *b0;


 if (cstate->label_stack_depth > 0)
  bpf_error(cstate, "no VLAN match after MPLS");
 switch (cstate->linktype) {

 case 134:
 case 130:
 case 129:
   b0 = gen_vlan_no_bpf_extensions(cstate, vlan_num);
                break;

 case 133:
 case 128:
 case 131:
 case 132:
  b0 = gen_vlan_no_bpf_extensions(cstate, vlan_num);
  break;

 default:
  bpf_error(cstate, "no VLAN support for data link type %d",
        cstate->linktype);

 }

        cstate->vlan_stack_depth++;

 return (b0);
}
