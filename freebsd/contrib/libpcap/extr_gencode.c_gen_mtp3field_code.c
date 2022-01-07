
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int ;
struct block {int dummy; } ;
struct TYPE_5__ {int off_sio; int off_opc; int off_dpc; int off_sls; } ;
typedef TYPE_1__ compiler_state_t ;
typedef int bpf_u_int32 ;


 int BPF_B ;
 int BPF_W ;
 int OFFSET_NOT_SET ;
 int OR_PACKET ;
 int abort () ;
 int bpf_error (TYPE_1__*,char*,...) ;
 struct block* gen_ncmp (TYPE_1__*,int ,int,int ,int,int,int,int) ;

struct block *
gen_mtp3field_code(compiler_state_t *cstate, int mtp3field, bpf_u_int32 jvalue,
    bpf_u_int32 jtype, int reverse)
{
 struct block *b0;
 bpf_u_int32 val1 , val2 , val3;
 u_int newoff_sio = cstate->off_sio;
 u_int newoff_opc = cstate->off_opc;
 u_int newoff_dpc = cstate->off_dpc;
 u_int newoff_sls = cstate->off_sls;

 switch (mtp3field) {

 case 133:
  newoff_sio += 3;


 case 129:
  if (cstate->off_sio == OFFSET_NOT_SET)
   bpf_error(cstate, "'sio' supported only on SS7");

  if(jvalue > 255)
          bpf_error(cstate, "sio value %u too big; max value = 255",
              jvalue);
  b0 = gen_ncmp(cstate, OR_PACKET, newoff_sio, BPF_B, 0xffffffff,
      (u_int)jtype, reverse, (u_int)jvalue);
  break;

 case 134:
  newoff_opc+=3;
        case 130:
         if (cstate->off_opc == OFFSET_NOT_SET)
   bpf_error(cstate, "'opc' supported only on SS7");

  if (jvalue > 16383)
          bpf_error(cstate, "opc value %u too big; max value = 16383",
              jvalue);


  val1 = jvalue & 0x00003c00;
  val1 = val1 >>10;
  val2 = jvalue & 0x000003fc;
  val2 = val2 <<6;
  val3 = jvalue & 0x00000003;
  val3 = val3 <<22;
  jvalue = val1 + val2 + val3;
  b0 = gen_ncmp(cstate, OR_PACKET, newoff_opc, BPF_W, 0x00c0ff0f,
      (u_int)jtype, reverse, (u_int)jvalue);
  break;

 case 135:
  newoff_dpc += 3;


 case 131:
         if (cstate->off_dpc == OFFSET_NOT_SET)
   bpf_error(cstate, "'dpc' supported only on SS7");

  if (jvalue > 16383)
          bpf_error(cstate, "dpc value %u too big; max value = 16383",
              jvalue);


  val1 = jvalue & 0x000000ff;
  val1 = val1 << 24;
  val2 = jvalue & 0x00003f00;
  val2 = val2 << 8;
  jvalue = val1 + val2;
  b0 = gen_ncmp(cstate, OR_PACKET, newoff_dpc, BPF_W, 0xff3f0000,
      (u_int)jtype, reverse, (u_int)jvalue);
  break;

 case 132:
   newoff_sls+=3;
 case 128:
         if (cstate->off_sls == OFFSET_NOT_SET)
   bpf_error(cstate, "'sls' supported only on SS7");

  if (jvalue > 15)
           bpf_error(cstate, "sls value %u too big; max value = 15",
               jvalue);


  jvalue = jvalue << 4;
  b0 = gen_ncmp(cstate, OR_PACKET, newoff_sls, BPF_B, 0xf0,
      (u_int)jtype,reverse, (u_int)jvalue);
  break;

 default:
  abort();
 }
 return b0;
}
