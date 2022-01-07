
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block {int dummy; } ;
typedef int compiler_state_t ;


 int ETHERTYPE_AARP ;
 int ETHERTYPE_ARP ;
 int ETHERTYPE_ATALK ;
 int ETHERTYPE_DN ;
 int ETHERTYPE_IP ;
 int ETHERTYPE_IPV6 ;
 int ETHERTYPE_LAT ;
 int ETHERTYPE_MOPDL ;
 int ETHERTYPE_MOPRC ;
 int ETHERTYPE_REVARP ;
 int ETHERTYPE_SCA ;
 int IPPROTO_AH ;
 int IPPROTO_CARP ;
 int IPPROTO_ESP ;
 int IPPROTO_ICMP ;
 int IPPROTO_ICMPV6 ;
 int IPPROTO_IGMP ;
 int IPPROTO_IGRP ;
 int IPPROTO_PIM ;
 int IPPROTO_SCTP ;
 int IPPROTO_TCP ;
 int IPPROTO_UDP ;
 int IPPROTO_VRRP ;
 int ISIS_L1_CSNP ;
 int ISIS_L1_LAN_IIH ;
 int ISIS_L1_LSP ;
 int ISIS_L1_PSNP ;
 int ISIS_L2_CSNP ;
 int ISIS_L2_LAN_IIH ;
 int ISIS_L2_LSP ;
 int ISIS_L2_PSNP ;
 int ISIS_PTP_IIH ;
 int ISO10589_ISIS ;
 int ISO8473_CLNP ;
 int ISO9542_ESIS ;
 int LLCSAP_8021D ;
 int LLCSAP_IPX ;
 int LLCSAP_ISONS ;
 int LLCSAP_NETBEUI ;







 int Q_DEFAULT ;
 int abort () ;
 int bpf_error (int *,char*) ;
 struct block* gen_linktype (int *,int ) ;
 int gen_or (struct block*,struct block*) ;
 struct block* gen_proto (int *,int ,int const,int ) ;

struct block *
gen_proto_abbrev(compiler_state_t *cstate, int proto)
{
 struct block *b0;
 struct block *b1;

 switch (proto) {

 case 132:
  b1 = gen_proto(cstate, IPPROTO_SCTP, 153, Q_DEFAULT);
  b0 = gen_proto(cstate, IPPROTO_SCTP, 152, Q_DEFAULT);
  gen_or(b0, b1);
  break;

 case 130:
  b1 = gen_proto(cstate, IPPROTO_TCP, 153, Q_DEFAULT);
  b0 = gen_proto(cstate, IPPROTO_TCP, 152, Q_DEFAULT);
  gen_or(b0, b1);
  break;

 case 129:
  b1 = gen_proto(cstate, IPPROTO_UDP, 153, Q_DEFAULT);
  b0 = gen_proto(cstate, IPPROTO_UDP, 152, Q_DEFAULT);
  gen_or(b0, b1);
  break;

 case 157:
  b1 = gen_proto(cstate, IPPROTO_ICMP, 153, Q_DEFAULT);
  break;





 case 155:
  b1 = gen_proto(cstate, 2, 153, Q_DEFAULT);
  break;




 case 154:
  b1 = gen_proto(cstate, 9, 153, Q_DEFAULT);
  break;





 case 136:
  b1 = gen_proto(cstate, 103, 153, Q_DEFAULT);
  b0 = gen_proto(cstate, 103, 152, Q_DEFAULT);
  gen_or(b0, b1);
  break;





 case 128:
  b1 = gen_proto(cstate, 112, 153, Q_DEFAULT);
  break;





 case 162:
  b1 = gen_proto(cstate, 112, 153, Q_DEFAULT);
  break;

 case 153:
  b1 = gen_linktype(cstate, ETHERTYPE_IP);
  break;

 case 164:
  b1 = gen_linktype(cstate, ETHERTYPE_ARP);
  break;

 case 134:
  b1 = gen_linktype(cstate, ETHERTYPE_REVARP);
  break;

 case 140:
  bpf_error(cstate, "link layer applied in wrong context");

 case 163:
  b1 = gen_linktype(cstate, ETHERTYPE_ATALK);
  break;

 case 166:
  b1 = gen_linktype(cstate, ETHERTYPE_AARP);
  break;

 case 160:
  b1 = gen_linktype(cstate, ETHERTYPE_DN);
  break;

 case 133:
  b1 = gen_linktype(cstate, ETHERTYPE_SCA);
  break;

 case 141:
  b1 = gen_linktype(cstate, ETHERTYPE_LAT);
  break;

 case 139:
  b1 = gen_linktype(cstate, ETHERTYPE_MOPDL);
  break;

 case 138:
  b1 = gen_linktype(cstate, ETHERTYPE_MOPRC);
  break;

 case 152:
  b1 = gen_linktype(cstate, ETHERTYPE_IPV6);
  break;




 case 156:
  b1 = gen_proto(cstate, 58, 152, Q_DEFAULT);
  break;




 case 165:
  b1 = gen_proto(cstate, 51, 153, Q_DEFAULT);
  b0 = gen_proto(cstate, 51, 152, Q_DEFAULT);
  gen_or(b0, b1);
  break;




 case 158:
  b1 = gen_proto(cstate, 50, 153, Q_DEFAULT);
  b0 = gen_proto(cstate, 50, 152, Q_DEFAULT);
  gen_or(b0, b1);
  break;

 case 142:
  b1 = gen_linktype(cstate, LLCSAP_ISONS);
  break;

 case 159:
  b1 = gen_proto(cstate, ISO9542_ESIS, 142, Q_DEFAULT);
  break;

 case 150:
  b1 = gen_proto(cstate, ISO10589_ISIS, 142, Q_DEFAULT);
  break;

 case 147:
  b0 = gen_proto(cstate, ISIS_L1_LAN_IIH, 150, Q_DEFAULT);
  b1 = gen_proto(cstate, ISIS_PTP_IIH, 150, Q_DEFAULT);
  gen_or(b0, b1);
  b0 = gen_proto(cstate, ISIS_L1_LSP, 150, Q_DEFAULT);
  gen_or(b0, b1);
  b0 = gen_proto(cstate, ISIS_L1_CSNP, 150, Q_DEFAULT);
  gen_or(b0, b1);
  b0 = gen_proto(cstate, ISIS_L1_PSNP, 150, Q_DEFAULT);
  gen_or(b0, b1);
  break;

 case 146:
  b0 = gen_proto(cstate, ISIS_L2_LAN_IIH, 150, Q_DEFAULT);
  b1 = gen_proto(cstate, ISIS_PTP_IIH, 150, Q_DEFAULT);
  gen_or(b0, b1);
  b0 = gen_proto(cstate, ISIS_L2_LSP, 150, Q_DEFAULT);
  gen_or(b0, b1);
  b0 = gen_proto(cstate, ISIS_L2_CSNP, 150, Q_DEFAULT);
  gen_or(b0, b1);
  b0 = gen_proto(cstate, ISIS_L2_PSNP, 150, Q_DEFAULT);
  gen_or(b0, b1);
  break;

 case 148:
  b0 = gen_proto(cstate, ISIS_L1_LAN_IIH, 150, Q_DEFAULT);
  b1 = gen_proto(cstate, ISIS_L2_LAN_IIH, 150, Q_DEFAULT);
  gen_or(b0, b1);
  b0 = gen_proto(cstate, ISIS_PTP_IIH, 150, Q_DEFAULT);
  gen_or(b0, b1);
  break;

 case 145:
  b0 = gen_proto(cstate, ISIS_L1_LSP, 150, Q_DEFAULT);
  b1 = gen_proto(cstate, ISIS_L2_LSP, 150, Q_DEFAULT);
  gen_or(b0, b1);
  break;

 case 143:
  b0 = gen_proto(cstate, ISIS_L1_CSNP, 150, Q_DEFAULT);
  b1 = gen_proto(cstate, ISIS_L2_CSNP, 150, Q_DEFAULT);
  gen_or(b0, b1);
  b0 = gen_proto(cstate, ISIS_L1_PSNP, 150, Q_DEFAULT);
  gen_or(b0, b1);
  b0 = gen_proto(cstate, ISIS_L2_PSNP, 150, Q_DEFAULT);
  gen_or(b0, b1);
  break;

 case 149:
  b0 = gen_proto(cstate, ISIS_L1_CSNP, 150, Q_DEFAULT);
  b1 = gen_proto(cstate, ISIS_L2_CSNP, 150, Q_DEFAULT);
  gen_or(b0, b1);
  break;

 case 144:
  b0 = gen_proto(cstate, ISIS_L1_PSNP, 150, Q_DEFAULT);
  b1 = gen_proto(cstate, ISIS_L2_PSNP, 150, Q_DEFAULT);
  gen_or(b0, b1);
  break;

 case 161:
  b1 = gen_proto(cstate, ISO8473_CLNP, 142, Q_DEFAULT);
  break;

 case 131:
  b1 = gen_linktype(cstate, LLCSAP_8021D);
  break;

 case 151:
  b1 = gen_linktype(cstate, LLCSAP_IPX);
  break;

 case 137:
  b1 = gen_linktype(cstate, LLCSAP_NETBEUI);
  break;

 case 135:
  bpf_error(cstate, "'radio' is not a valid protocol type");

 default:
  abort();
 }
 return b1;
}
