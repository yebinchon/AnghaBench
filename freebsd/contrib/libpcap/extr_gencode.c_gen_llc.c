
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct block {int dummy; } ;
struct TYPE_9__ {int linktype; } ;
typedef TYPE_1__ compiler_state_t ;
typedef int bpf_int32 ;


 int A_LLC ;
 int BPF_H ;
 int ETHERMTU ;
 int OR_LINKTYPE ;
 int OR_LLC ;
 int bpf_error (TYPE_1__*,char*,int) ;
 int gen_and (struct block*,struct block*) ;
 struct block* gen_atmtype_abbrev (TYPE_1__*,int ) ;
 struct block* gen_check_802_11_data_frame (TYPE_1__*) ;
 struct block* gen_cmp (TYPE_1__*,int ,int ,int ,int ) ;
 struct block* gen_cmp_gt (TYPE_1__*,int ,int ,int ,int ) ;
 int gen_not (struct block*) ;
 struct block* gen_true (TYPE_1__*) ;

struct block *
gen_llc(compiler_state_t *cstate)
{
 struct block *b0, *b1;

 switch (cstate->linktype) {

 case 136:




  b0 = gen_cmp_gt(cstate, OR_LINKTYPE, 0, BPF_H, ETHERMTU);
  gen_not(b0);





  b1 = gen_cmp(cstate, OR_LLC, 0, BPF_H, (bpf_int32)0xFFFF);
  gen_not(b1);
  gen_and(b0, b1);
  return b1;

 case 128:



  b0 = gen_atmtype_abbrev(cstate, A_LLC);
  return b0;

 case 134:



  return gen_true(cstate);

 case 135:



  return gen_true(cstate);

 case 137:
  return gen_true(cstate);

 case 133:
 case 129:
 case 132:
 case 131:
 case 130:



  b0 = gen_check_802_11_data_frame(cstate);
  return b0;

 default:
  bpf_error(cstate, "'llc' not supported for linktype %d", cstate->linktype);

 }
}
