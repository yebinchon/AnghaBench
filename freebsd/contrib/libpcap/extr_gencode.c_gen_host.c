
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct block {int dummy; } ;
struct TYPE_6__ {int label_stack_depth; } ;
typedef TYPE_1__ compiler_state_t ;
typedef int bpf_u_int32 ;


 int ETHERTYPE_ARP ;
 int ETHERTYPE_IP ;
 int ETHERTYPE_REVARP ;
 int Q_NET ;
 int abort () ;
 int bpf_error (TYPE_1__*,char*,...) ;
 struct block* gen_dnhostop (TYPE_1__*,int ,int) ;
 struct block* gen_hostop (TYPE_1__*,int ,int ,int,int ,int,int) ;
 int gen_or (struct block*,struct block*) ;

__attribute__((used)) static struct block *
gen_host(compiler_state_t *cstate, bpf_u_int32 addr, bpf_u_int32 mask,
    int proto, int dir, int type)
{
 struct block *b0, *b1;
 const char *typestr;

 if (type == Q_NET)
  typestr = "net";
 else
  typestr = "host";

 switch (proto) {

 case 152:
  b0 = gen_host(cstate, addr, mask, 145, dir, type);




  if (cstate->label_stack_depth == 0) {
   b1 = gen_host(cstate, addr, mask, 157, dir, type);
   gen_or(b0, b1);
   b0 = gen_host(cstate, addr, mask, 134, dir, type);
   gen_or(b1, b0);
  }
  return b0;

 case 145:
  return gen_hostop(cstate, addr, mask, dir, ETHERTYPE_IP, 12, 16);

 case 134:
  return gen_hostop(cstate, addr, mask, dir, ETHERTYPE_REVARP, 14, 24);

 case 157:
  return gen_hostop(cstate, addr, mask, dir, ETHERTYPE_ARP, 14, 24);

 case 130:
  bpf_error(cstate, "'tcp' modifier applied to %s", typestr);

 case 132:
  bpf_error(cstate, "'sctp' modifier applied to %s", typestr);

 case 129:
  bpf_error(cstate, "'udp' modifier applied to %s", typestr);

 case 149:
  bpf_error(cstate, "'icmp' modifier applied to %s", typestr);

 case 147:
  bpf_error(cstate, "'igmp' modifier applied to %s", typestr);

 case 146:
  bpf_error(cstate, "'igrp' modifier applied to %s", typestr);

 case 136:
  bpf_error(cstate, "'pim' modifier applied to %s", typestr);

 case 128:
  bpf_error(cstate, "'vrrp' modifier applied to %s", typestr);

 case 155:
  bpf_error(cstate, "'carp' modifier applied to %s", typestr);

 case 156:
  bpf_error(cstate, "ATALK host filtering not implemented");

 case 159:
  bpf_error(cstate, "AARP host filtering not implemented");

 case 153:
  return gen_dnhostop(cstate, addr, dir);

 case 133:
  bpf_error(cstate, "SCA host filtering not implemented");

 case 140:
  bpf_error(cstate, "LAT host filtering not implemented");

 case 139:
  bpf_error(cstate, "MOPDL host filtering not implemented");

 case 138:
  bpf_error(cstate, "MOPRC host filtering not implemented");

 case 144:
  bpf_error(cstate, "'ip6' modifier applied to ip host");

 case 148:
  bpf_error(cstate, "'icmp6' modifier applied to %s", typestr);

 case 158:
  bpf_error(cstate, "'ah' modifier applied to %s", typestr);

 case 150:
  bpf_error(cstate, "'esp' modifier applied to %s", typestr);

 case 141:
  bpf_error(cstate, "ISO host filtering not implemented");

 case 151:
  bpf_error(cstate, "'esis' modifier applied to %s", typestr);

 case 142:
  bpf_error(cstate, "'isis' modifier applied to %s", typestr);

 case 154:
  bpf_error(cstate, "'clnp' modifier applied to %s", typestr);

 case 131:
  bpf_error(cstate, "'stp' modifier applied to %s", typestr);

 case 143:
  bpf_error(cstate, "IPX host filtering not implemented");

 case 137:
  bpf_error(cstate, "'netbeui' modifier applied to %s", typestr);

 case 135:
  bpf_error(cstate, "'radio' modifier applied to %s", typestr);

 default:
  abort();
 }

}
