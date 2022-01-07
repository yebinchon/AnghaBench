
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct slist {int dummy; } ;
struct TYPE_13__ {int k; } ;
struct block {struct slist* stmts; TYPE_1__ s; } ;
struct TYPE_14__ {int linktype; } ;
typedef TYPE_2__ compiler_state_t ;
typedef int bpf_int32 ;


 int BPF_B ;
 int BPF_JSET ;
 int ETHERTYPE_IP ;
 int ETHERTYPE_IPV6 ;
 int JMP (int ) ;
 int OR_LINKHDR ;
 int OR_LINKPL ;

 int Q_DST ;



 int abroadcast ;
 int bpf_error (TYPE_2__*,char*) ;
 struct block* gen_ahostop (TYPE_2__*,int ,int ) ;
 int gen_and (struct block*,struct block*) ;
 struct block* gen_cmp (TYPE_2__*,int ,int,int ,int ) ;
 struct block* gen_cmp_ge (TYPE_2__*,int ,int,int ,int ) ;
 struct block* gen_linktype (TYPE_2__*,int ) ;
 struct slist* gen_load_a (TYPE_2__*,int ,int,int ) ;
 struct block* gen_mac_multicast (TYPE_2__*,int) ;
 int gen_not (struct block*) ;
 int gen_or (struct block*,struct block*) ;
 struct block* gen_prevlinkhdr_check (TYPE_2__*) ;
 struct block* new_block (TYPE_2__*,int ) ;

struct block *
gen_multicast(compiler_state_t *cstate, int proto)
{
 register struct block *b0, *b1, *b2;
 register struct slist *s;

 switch (proto) {

 case 131:
 case 128:
  switch (cstate->linktype) {
  case 144:
  case 143:

   return gen_ahostop(cstate, abroadcast, Q_DST);
  case 142:
  case 135:
  case 134:
   b1 = gen_prevlinkhdr_check(cstate);

   b0 = gen_mac_multicast(cstate, 0);
   if (b1 != ((void*)0))
    gen_and(b1, b0);
   return b0;
  case 141:






   return gen_mac_multicast(cstate, 1);
  case 140:

   return gen_mac_multicast(cstate, 2);
  case 139:
  case 132:
  case 137:
  case 138:
  case 133:
   s = gen_load_a(cstate, OR_LINKHDR, 1, BPF_B);
   b1 = new_block(cstate, JMP(BPF_JSET));
   b1->s.k = 0x01;
   b1->stmts = s;




   b0 = gen_mac_multicast(cstate, 16);
   gen_and(b1, b0);





   s = gen_load_a(cstate, OR_LINKHDR, 1, BPF_B);
   b2 = new_block(cstate, JMP(BPF_JSET));
   b2->s.k = 0x01;
   b2->stmts = s;
   gen_not(b2);




   b1 = gen_mac_multicast(cstate, 4);
   gen_and(b2, b1);





   gen_or(b1, b0);





   s = gen_load_a(cstate, OR_LINKHDR, 0, BPF_B);
   b1 = new_block(cstate, JMP(BPF_JSET));
   b1->s.k = 0x08;
   b1->stmts = s;




   gen_and(b1, b0);






   s = gen_load_a(cstate, OR_LINKHDR, 0, BPF_B);
   b2 = new_block(cstate, JMP(BPF_JSET));
   b2->s.k = 0x08;
   b2->stmts = s;
   gen_not(b2);




   b1 = gen_mac_multicast(cstate, 4);
   gen_and(b2, b1);






   gen_or(b1, b0);
   s = gen_load_a(cstate, OR_LINKHDR, 0, BPF_B);
   b1 = new_block(cstate, JMP(BPF_JSET));
   b1->s.k = 0x04;
   b1->stmts = s;
   gen_not(b1);





   gen_and(b1, b0);
   return b0;
  case 136:
   b0 = gen_mac_multicast(cstate, 2);
   return b0;
  default:
   break;
  }

  break;

 case 130:
  b0 = gen_linktype(cstate, ETHERTYPE_IP);
  b1 = gen_cmp_ge(cstate, OR_LINKPL, 16, BPF_B, (bpf_int32)224);
  gen_and(b0, b1);
  return b1;

 case 129:
  b0 = gen_linktype(cstate, ETHERTYPE_IPV6);
  b1 = gen_cmp(cstate, OR_LINKPL, 24, BPF_B, (bpf_int32)255);
  gen_and(b0, b1);
  return b1;
 }
 bpf_error(cstate, "link-layer multicast filters supported only on ethernet/FDDI/token ring/ARCNET/802.11/ATM LANE/Fibre Channel");

}
