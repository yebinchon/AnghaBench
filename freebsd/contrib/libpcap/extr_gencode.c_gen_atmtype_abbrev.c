
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct block {int dummy; } ;
struct TYPE_11__ {int constant_part; } ;
struct TYPE_10__ {int constant_part; } ;
struct TYPE_9__ {int constant_part; } ;
struct TYPE_12__ {int off_nl_nosnap; int prevlinktype; int linktype; int is_atm; int off_nl; TYPE_3__ off_linkhdr; TYPE_2__ off_linkpl; TYPE_1__ off_linktype; int off_payload; } ;
typedef TYPE_4__ compiler_state_t ;
 int A_PROTOTYPE ;

 int A_VCI ;
 int A_VPI ;
 int BPF_JEQ ;
 int DLT_EN10MB ;
 int PT_LANE ;
 int PT_LLC ;
 int PUSH_LINKHDR (TYPE_4__*,int ,int ,int ,int) ;
 int abort () ;
 int bpf_error (TYPE_4__*,char*) ;
 int gen_and (struct block*,struct block*) ;
 struct block* gen_atmfield_code (TYPE_4__*,int ,int,int ,int ) ;

struct block *
gen_atmtype_abbrev(compiler_state_t *cstate, int type)
{
 struct block *b0, *b1;

 switch (type) {

 case 131:

  if (!cstate->is_atm)
   bpf_error(cstate, "'metac' supported only on raw ATM");
  b0 = gen_atmfield_code(cstate, A_VPI, 0, BPF_JEQ, 0);
  b1 = gen_atmfield_code(cstate, A_VCI, 1, BPF_JEQ, 0);
  gen_and(b0, b1);
  break;

 case 135:

  if (!cstate->is_atm)
   bpf_error(cstate, "'bcc' supported only on raw ATM");
  b0 = gen_atmfield_code(cstate, A_VPI, 0, BPF_JEQ, 0);
  b1 = gen_atmfield_code(cstate, A_VCI, 2, BPF_JEQ, 0);
  gen_and(b0, b1);
  break;

 case 129:

  if (!cstate->is_atm)
   bpf_error(cstate, "'oam4sc' supported only on raw ATM");
  b0 = gen_atmfield_code(cstate, A_VPI, 0, BPF_JEQ, 0);
  b1 = gen_atmfield_code(cstate, A_VCI, 3, BPF_JEQ, 0);
  gen_and(b0, b1);
  break;

 case 130:

  if (!cstate->is_atm)
   bpf_error(cstate, "'oam4ec' supported only on raw ATM");
  b0 = gen_atmfield_code(cstate, A_VPI, 0, BPF_JEQ, 0);
  b1 = gen_atmfield_code(cstate, A_VCI, 4, BPF_JEQ, 0);
  gen_and(b0, b1);
  break;

 case 128:

  if (!cstate->is_atm)
   bpf_error(cstate, "'sc' supported only on raw ATM");
  b0 = gen_atmfield_code(cstate, A_VPI, 0, BPF_JEQ, 0);
  b1 = gen_atmfield_code(cstate, A_VCI, 5, BPF_JEQ, 0);
  gen_and(b0, b1);
  break;

 case 134:

  if (!cstate->is_atm)
   bpf_error(cstate, "'ilmic' supported only on raw ATM");
  b0 = gen_atmfield_code(cstate, A_VPI, 0, BPF_JEQ, 0);
  b1 = gen_atmfield_code(cstate, A_VCI, 16, BPF_JEQ, 0);
  gen_and(b0, b1);
  break;

 case 133:

  if (!cstate->is_atm)
   bpf_error(cstate, "'lane' supported only on raw ATM");
  b1 = gen_atmfield_code(cstate, A_PROTOTYPE, PT_LANE, BPF_JEQ, 0);
  PUSH_LINKHDR(cstate, DLT_EN10MB, 0,
      cstate->off_payload + 2,
      -1);
  cstate->off_linktype.constant_part = cstate->off_linkhdr.constant_part + 12;
  cstate->off_linkpl.constant_part = cstate->off_linkhdr.constant_part + 14;
  cstate->off_nl = 0;
  cstate->off_nl_nosnap = 3;
  break;

 case 132:

  if (!cstate->is_atm)
   bpf_error(cstate, "'llc' supported only on raw ATM");
  b1 = gen_atmfield_code(cstate, A_PROTOTYPE, PT_LLC, BPF_JEQ, 0);
  cstate->linktype = cstate->prevlinktype;
  break;

 default:
  abort();
 }
 return b1;
}
