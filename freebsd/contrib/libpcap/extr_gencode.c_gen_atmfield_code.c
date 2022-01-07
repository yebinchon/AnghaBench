
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct block {int dummy; } ;
struct TYPE_5__ {scalar_t__ off_proto; int is_atm; scalar_t__ off_payload; scalar_t__ off_vci; scalar_t__ off_vpi; } ;
typedef TYPE_1__ compiler_state_t ;
typedef int bpf_u_int32 ;
typedef int bpf_int32 ;







 int BPF_B ;
 int BPF_H ;
 scalar_t__ MSG_TYPE_POS ;
 scalar_t__ OFFSET_NOT_SET ;
 int OR_LINKHDR ;
 int abort () ;
 int bpf_error (TYPE_1__*,char*) ;
 struct block* gen_ncmp (TYPE_1__*,int ,scalar_t__,int ,int,int ,int,int ) ;

struct block *
gen_atmfield_code(compiler_state_t *cstate, int atmfield, bpf_int32 jvalue,
    bpf_u_int32 jtype, int reverse)
{
 struct block *b0;

 switch (atmfield) {

 case 128:
  if (!cstate->is_atm)
   bpf_error(cstate, "'vpi' supported only on raw ATM");
  if (cstate->off_vpi == OFFSET_NOT_SET)
   abort();
  b0 = gen_ncmp(cstate, OR_LINKHDR, cstate->off_vpi, BPF_B, 0xffffffff, jtype,
      reverse, jvalue);
  break;

 case 129:
  if (!cstate->is_atm)
   bpf_error(cstate, "'vci' supported only on raw ATM");
  if (cstate->off_vci == OFFSET_NOT_SET)
   abort();
  b0 = gen_ncmp(cstate, OR_LINKHDR, cstate->off_vci, BPF_H, 0xffffffff, jtype,
      reverse, jvalue);
  break;

 case 130:
  if (cstate->off_proto == OFFSET_NOT_SET)
   abort();
  b0 = gen_ncmp(cstate, OR_LINKHDR, cstate->off_proto, BPF_B, 0x0f, jtype,
      reverse, jvalue);
  break;

 case 131:
  if (cstate->off_payload == OFFSET_NOT_SET)
   abort();
  b0 = gen_ncmp(cstate, OR_LINKHDR, cstate->off_payload + MSG_TYPE_POS, BPF_B,
      0xffffffff, jtype, reverse, jvalue);
  break;

 case 132:
  if (!cstate->is_atm)
   bpf_error(cstate, "'callref' supported only on raw ATM");
  if (cstate->off_proto == OFFSET_NOT_SET)
   abort();
  b0 = gen_ncmp(cstate, OR_LINKHDR, cstate->off_proto, BPF_B, 0xffffffff,
      jtype, reverse, jvalue);
  break;

 default:
  abort();
 }
 return b0;
}
