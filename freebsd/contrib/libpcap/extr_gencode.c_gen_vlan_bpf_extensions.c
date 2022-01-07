
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ k; } ;
struct slist {TYPE_1__ s; } ;
struct TYPE_4__ {int k; } ;
struct block {TYPE_2__ s; struct slist* stmts; } ;
typedef int compiler_state_t ;


 int BPF_ABS ;
 int BPF_B ;
 int BPF_JEQ ;
 int BPF_LD ;
 int JMP (int ) ;
 scalar_t__ SKF_AD_OFF ;
 scalar_t__ SKF_AD_VLAN_TAG_PRESENT ;
 int gen_and (struct block*,struct block*) ;
 int gen_or (struct block*,struct block*) ;
 int gen_vlan_patch_tpid_test (int *,struct block*) ;
 int gen_vlan_patch_vid_test (int *,struct block*) ;
 struct block* gen_vlan_tpid_test (int *) ;
 struct block* gen_vlan_vid_test (int *,int) ;
 struct block* new_block (int *,int ) ;
 struct slist* new_stmt (int *,int) ;

__attribute__((used)) static struct block *
gen_vlan_bpf_extensions(compiler_state_t *cstate, int vlan_num)
{
        struct block *b0, *b_tpid, *b_vid = ((void*)0);
        struct slist *s;



        s = new_stmt(cstate, BPF_LD|BPF_B|BPF_ABS);
        s->s.k = SKF_AD_OFF + SKF_AD_VLAN_TAG_PRESENT;

        b0 = new_block(cstate, JMP(BPF_JEQ));
        b0->stmts = s;
        b0->s.k = 1;
 b_tpid = gen_vlan_tpid_test(cstate);
 if (vlan_num >= 0)
  b_vid = gen_vlan_vid_test(cstate, vlan_num);

 gen_vlan_patch_tpid_test(cstate, b_tpid);
 gen_or(b0, b_tpid);
 b0 = b_tpid;

 if (vlan_num >= 0) {
  gen_vlan_patch_vid_test(cstate, b_vid);
  gen_and(b0, b_vid);
  b0 = b_vid;
 }

        return b0;
}
