
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct block {int dummy; } ;
struct TYPE_6__ {scalar_t__ label_stack_depth; int linktype; int off_nl_nosnap; int off_nl; } ;
typedef TYPE_1__ compiler_state_t ;
typedef int bpf_int32 ;


 int BPF_B ;
 int BPF_W ;





 int ETHERTYPE_MPLS ;
 int OR_LINKPL ;
 int OR_PREVMPLSHDR ;
 int PPP_MPLS_UCAST ;
 int bpf_error (TYPE_1__*,char*,int) ;
 int gen_and (struct block*,struct block*) ;
 struct block* gen_linktype (TYPE_1__*,int ) ;
 struct block* gen_mcmp (TYPE_1__*,int ,int,int ,int ,int) ;

struct block *
gen_mpls(compiler_state_t *cstate, int label_num)
{
 struct block *b0, *b1;

        if (cstate->label_stack_depth > 0) {

            b0 = gen_mcmp(cstate, OR_PREVMPLSHDR, 2, BPF_B, 0, 0x01);
        } else {




            switch (cstate->linktype) {

            case 132:
            case 131:
            case 130:
            case 129:
                    b0 = gen_linktype(cstate, ETHERTYPE_MPLS);
                    break;

            case 128:
                    b0 = gen_linktype(cstate, PPP_MPLS_UCAST);
                    break;





            default:
                    bpf_error(cstate, "no MPLS support for data link type %d",
                          cstate->linktype);

                    break;
            }
        }


 if (label_num >= 0) {
  label_num = label_num << 12;
  b1 = gen_mcmp(cstate, OR_LINKPL, 0, BPF_W, (bpf_int32)label_num,
      0xfffff000);
  gen_and(b0, b1);
  b0 = b1;
 }
        cstate->off_nl_nosnap += 4;
        cstate->off_nl += 4;
        cstate->label_stack_depth++;
 return (b0);
}
