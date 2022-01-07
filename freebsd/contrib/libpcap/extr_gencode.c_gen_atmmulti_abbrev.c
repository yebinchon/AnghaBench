
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct block {int dummy; } ;
struct TYPE_7__ {int is_atm; } ;
typedef TYPE_1__ compiler_state_t ;


 int A_CALLPROCEED ;
 int A_CONNECT ;
 int A_CONNECTACK ;

 int A_METAC ;



 int A_RELEASE ;
 int A_RELEASE_DONE ;
 int A_SC ;
 int A_SETUP ;
 int A_VCI ;
 int A_VPI ;
 int BPF_JEQ ;
 int abort () ;
 int bpf_error (TYPE_1__*,char*) ;
 int gen_and (struct block*,struct block*) ;
 struct block* gen_atmfield_code (TYPE_1__*,int ,int,int ,int ) ;
 struct block* gen_atmtype_abbrev (TYPE_1__*,int ) ;
 struct block* gen_msg_abbrev (TYPE_1__*,int ) ;
 int gen_or (struct block*,struct block*) ;

struct block *
gen_atmmulti_abbrev(compiler_state_t *cstate, int type)
{
 struct block *b0, *b1;

 switch (type) {

 case 129:
  if (!cstate->is_atm)
   bpf_error(cstate, "'oam' supported only on raw ATM");
  b1 = gen_atmmulti_abbrev(cstate, 128);
  break;

 case 128:
  if (!cstate->is_atm)
   bpf_error(cstate, "'oamf4' supported only on raw ATM");

  b0 = gen_atmfield_code(cstate, A_VCI, 3, BPF_JEQ, 0);
  b1 = gen_atmfield_code(cstate, A_VCI, 4, BPF_JEQ, 0);
  gen_or(b0, b1);
  b0 = gen_atmfield_code(cstate, A_VPI, 0, BPF_JEQ, 0);
  gen_and(b0, b1);
  break;

 case 131:




  if (!cstate->is_atm)
   bpf_error(cstate, "'connectmsg' supported only on raw ATM");
  b0 = gen_msg_abbrev(cstate, A_SETUP);
  b1 = gen_msg_abbrev(cstate, A_CALLPROCEED);
  gen_or(b0, b1);
  b0 = gen_msg_abbrev(cstate, A_CONNECT);
  gen_or(b0, b1);
  b0 = gen_msg_abbrev(cstate, A_CONNECTACK);
  gen_or(b0, b1);
  b0 = gen_msg_abbrev(cstate, A_RELEASE);
  gen_or(b0, b1);
  b0 = gen_msg_abbrev(cstate, A_RELEASE_DONE);
  gen_or(b0, b1);
  b0 = gen_atmtype_abbrev(cstate, A_SC);
  gen_and(b0, b1);
  break;

 case 130:
  if (!cstate->is_atm)
   bpf_error(cstate, "'metaconnect' supported only on raw ATM");
  b0 = gen_msg_abbrev(cstate, A_SETUP);
  b1 = gen_msg_abbrev(cstate, A_CALLPROCEED);
  gen_or(b0, b1);
  b0 = gen_msg_abbrev(cstate, A_CONNECT);
  gen_or(b0, b1);
  b0 = gen_msg_abbrev(cstate, A_RELEASE);
  gen_or(b0, b1);
  b0 = gen_msg_abbrev(cstate, A_RELEASE_DONE);
  gen_or(b0, b1);
  b0 = gen_atmtype_abbrev(cstate, A_METAC);
  gen_and(b0, b1);
  break;

 default:
  abort();
 }
 return b1;
}
