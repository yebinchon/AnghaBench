
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct block {int dummy; } ;
struct TYPE_7__ {int linktype; } ;
typedef TYPE_1__ compiler_state_t ;
typedef long bpf_int32 ;


 int BPF_B ;
 int BPF_H ;


 int ETHERTYPE_IP ;
 int ETHERTYPE_IPV6 ;
 long IPPROTO_FRAGMENT ;
 int ISO10589_ISIS ;
 int LLCSAP_ISONS ;
 int OR_LINKHDR ;
 int OR_LINKPL ;
 int OR_LINKPL_NOSNAP ;
 int abort () ;
 int bpf_error (TYPE_1__*,char*) ;
 int gen_and (struct block*,struct block*) ;
 struct block* gen_cmp (TYPE_1__*,int ,int,int ,long) ;
 struct block* gen_linktype (TYPE_1__*,int) ;
 int gen_or (struct block*,struct block*) ;
 struct block* gen_protochain (TYPE_1__*,int,int const) ;

__attribute__((used)) static struct block *
gen_proto(compiler_state_t *cstate, int v, int proto, int dir)
{
 struct block *b0, *b1;

 struct block *b2;


 if (dir != 152)
  bpf_error(cstate, "direction applied to 'proto'");

 switch (proto) {
 case 152:
  b0 = gen_proto(cstate, v, 146, dir);
  b1 = gen_proto(cstate, v, 145, dir);
  gen_or(b0, b1);
  return b1;

 case 146:
  b0 = gen_linktype(cstate, ETHERTYPE_IP);

  b1 = gen_cmp(cstate, OR_LINKPL, 9, BPF_B, (bpf_int32)v);



  gen_and(b0, b1);
  return b1;

 case 142:
  switch (cstate->linktype) {

  case 158:
   return gen_cmp(cstate, OR_LINKHDR, 2, BPF_H, (0x03<<8) | v);

   break;

  case 159:




   b0 = gen_linktype(cstate, LLCSAP_ISONS<<8 | LLCSAP_ISONS);

   b1 = gen_cmp(cstate, OR_LINKPL_NOSNAP, 1, BPF_B, (long)v);
   gen_and(b0, b1);
   return b1;

  default:
   b0 = gen_linktype(cstate, LLCSAP_ISONS);
   b1 = gen_cmp(cstate, OR_LINKPL_NOSNAP, 0, BPF_B, (long)v);
   gen_and(b0, b1);
   return b1;
  }

 case 143:
  b0 = gen_proto(cstate, ISO10589_ISIS, 142, 152);




  b1 = gen_cmp(cstate, OR_LINKPL_NOSNAP, 4, BPF_B, (long)v);
  gen_and(b0, b1);
  return b1;

 case 156:
  bpf_error(cstate, "arp does not encapsulate another protocol");


 case 134:
  bpf_error(cstate, "rarp does not encapsulate another protocol");


 case 155:
  bpf_error(cstate, "atalk encapsulation is not specifiable");


 case 153:
  bpf_error(cstate, "decnet encapsulation is not specifiable");


 case 133:
  bpf_error(cstate, "sca does not encapsulate another protocol");


 case 141:
  bpf_error(cstate, "lat does not encapsulate another protocol");


 case 138:
  bpf_error(cstate, "moprc does not encapsulate another protocol");


 case 139:
  bpf_error(cstate, "mopdl does not encapsulate another protocol");


 case 140:
  return gen_linktype(cstate, v);

 case 129:
  bpf_error(cstate, "'udp proto' is bogus");


 case 130:
  bpf_error(cstate, "'tcp proto' is bogus");


 case 132:
  bpf_error(cstate, "'sctp proto' is bogus");


 case 150:
  bpf_error(cstate, "'icmp proto' is bogus");


 case 148:
  bpf_error(cstate, "'igmp proto' is bogus");


 case 147:
  bpf_error(cstate, "'igrp proto' is bogus");


 case 136:
  bpf_error(cstate, "'pim proto' is bogus");


 case 128:
  bpf_error(cstate, "'vrrp proto' is bogus");


 case 154:
  bpf_error(cstate, "'carp proto' is bogus");


 case 145:
  b0 = gen_linktype(cstate, ETHERTYPE_IPV6);





  b2 = gen_cmp(cstate, OR_LINKPL, 6, BPF_B, IPPROTO_FRAGMENT);
  b1 = gen_cmp(cstate, OR_LINKPL, 40, BPF_B, (bpf_int32)v);
  gen_and(b2, b1);
  b2 = gen_cmp(cstate, OR_LINKPL, 6, BPF_B, (bpf_int32)v);
  gen_or(b2, b1);



  gen_and(b0, b1);
  return b1;

 case 149:
  bpf_error(cstate, "'icmp6 proto' is bogus");

 case 157:
  bpf_error(cstate, "'ah proto' is bogus");

 case 151:
  bpf_error(cstate, "'ah proto' is bogus");

 case 131:
  bpf_error(cstate, "'stp proto' is bogus");

 case 144:
  bpf_error(cstate, "'ipx proto' is bogus");

 case 137:
  bpf_error(cstate, "'netbeui proto' is bogus");

 case 135:
  bpf_error(cstate, "'radio proto' is bogus");

 default:
  abort();

 }

}
