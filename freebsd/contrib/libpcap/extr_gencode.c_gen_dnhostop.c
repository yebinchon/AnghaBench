
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
typedef int u_int ;
struct block {int dummy; } ;
typedef int compiler_state_t ;
typedef scalar_t__ bpf_u_int32 ;
typedef int bpf_int32 ;


 int BPF_B ;
 int BPF_H ;
 int ETHERTYPE_DN ;
 int OR_LINKPL ;






 int abort () ;
 int bpf_error (int *,char*) ;
 int gen_and (struct block*,struct block*) ;
 struct block* gen_cmp (int *,int ,int,int ,int ) ;
 struct block* gen_linktype (int *,int ) ;
 struct block* gen_mcmp (int *,int ,int,int ,int ,int ) ;
 int gen_or (struct block*,struct block*) ;
 scalar_t__ ntohs (int) ;

__attribute__((used)) static struct block *
gen_dnhostop(compiler_state_t *cstate, bpf_u_int32 addr, int dir)
{
 struct block *b0, *b1, *b2, *tmp;
 u_int offset_lh;
 u_int offset_sh;

 switch (dir) {

 case 131:
  offset_sh = 1;
  offset_lh = 7;
  break;

 case 128:
  offset_sh = 3;
  offset_lh = 15;
  break;

 case 133:

  b0 = gen_dnhostop(cstate, addr, 128);
  b1 = gen_dnhostop(cstate, addr, 131);
  gen_and(b0, b1);
  return b1;

 case 129:
 case 132:

  b0 = gen_dnhostop(cstate, addr, 128);
  b1 = gen_dnhostop(cstate, addr, 131);
  gen_or(b0, b1);
  return b1;

 case 130:
  bpf_error(cstate, "ISO host filtering not implemented");

 default:
  abort();
 }
 b0 = gen_linktype(cstate, ETHERTYPE_DN);

 tmp = gen_mcmp(cstate, OR_LINKPL, 2, BPF_H,
     (bpf_int32)ntohs(0x0681), (bpf_int32)ntohs(0x07FF));
 b1 = gen_cmp(cstate, OR_LINKPL, 2 + 1 + offset_lh,
     BPF_H, (bpf_int32)ntohs((u_short)addr));
 gen_and(tmp, b1);

 tmp = gen_mcmp(cstate, OR_LINKPL, 2, BPF_B, (bpf_int32)0x06, (bpf_int32)0x7);
 b2 = gen_cmp(cstate, OR_LINKPL, 2 + offset_lh, BPF_H, (bpf_int32)ntohs((u_short)addr));
 gen_and(tmp, b2);
 gen_or(b2, b1);

 tmp = gen_mcmp(cstate, OR_LINKPL, 2, BPF_H,
     (bpf_int32)ntohs(0x0281), (bpf_int32)ntohs(0x07FF));
 b2 = gen_cmp(cstate, OR_LINKPL, 2 + 1 + offset_sh, BPF_H, (bpf_int32)ntohs((u_short)addr));
 gen_and(tmp, b2);
 gen_or(b2, b1);

 tmp = gen_mcmp(cstate, OR_LINKPL, 2, BPF_B, (bpf_int32)0x02, (bpf_int32)0x7);
 b2 = gen_cmp(cstate, OR_LINKPL, 2 + offset_sh, BPF_H, (bpf_int32)ntohs((u_short)addr));
 gen_and(tmp, b2);
 gen_or(b2, b1);


 gen_and(b0, b1);
 return b1;
}
