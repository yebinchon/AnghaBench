
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block {int dummy; } ;
typedef int compiler_state_t ;





 int A_MSGTYPE ;



 int BPF_JEQ ;
 int CALL_PROCEED ;
 int CONNECT ;
 int CONNECT_ACK ;
 int RELEASE ;
 int RELEASE_DONE ;
 int SETUP ;
 int abort () ;
 struct block* gen_atmfield_code (int *,int ,int ,int ,int ) ;

__attribute__((used)) static struct block *
gen_msg_abbrev(compiler_state_t *cstate, int type)
{
 struct block *b1;





 switch (type) {

 case 128:
  b1 = gen_atmfield_code(cstate, A_MSGTYPE, SETUP, BPF_JEQ, 0);
  break;

 case 133:
  b1 = gen_atmfield_code(cstate, A_MSGTYPE, CALL_PROCEED, BPF_JEQ, 0);
  break;

 case 132:
  b1 = gen_atmfield_code(cstate, A_MSGTYPE, CONNECT, BPF_JEQ, 0);
  break;

 case 131:
  b1 = gen_atmfield_code(cstate, A_MSGTYPE, CONNECT_ACK, BPF_JEQ, 0);
  break;

 case 130:
  b1 = gen_atmfield_code(cstate, A_MSGTYPE, RELEASE, BPF_JEQ, 0);
  break;

 case 129:
  b1 = gen_atmfield_code(cstate, A_MSGTYPE, RELEASE_DONE, BPF_JEQ, 0);
  break;

 default:
  abort();
 }
 return b1;
}
