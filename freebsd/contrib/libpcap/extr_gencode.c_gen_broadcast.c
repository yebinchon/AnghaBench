
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_1__ ;


typedef int u_char ;
struct block {int dummy; } ;
struct TYPE_13__ {int netmask; int linktype; } ;
typedef TYPE_1__ compiler_state_t ;
typedef int bpf_u_int32 ;
typedef int bpf_int32 ;


 int BPF_W ;
 int ETHERTYPE_IP ;
 int OR_LINKPL ;
 int PCAP_NETMASK_UNKNOWN ;

 int Q_DST ;


 int abroadcast ;
 int bpf_error (TYPE_1__*,char*) ;
 struct block* gen_ahostop (TYPE_1__*,int ,int ) ;
 int gen_and (struct block*,struct block*) ;
 struct block* gen_ehostop (TYPE_1__*,int const*,int ) ;
 struct block* gen_fhostop (TYPE_1__*,int const*,int ) ;
 struct block* gen_ipfchostop (TYPE_1__*,int const*,int ) ;
 struct block* gen_linktype (TYPE_1__*,int ) ;
 struct block* gen_mcmp (TYPE_1__*,int ,int,int ,int ,int) ;
 int gen_or (struct block*,struct block*) ;
 struct block* gen_prevlinkhdr_check (TYPE_1__*) ;
 struct block* gen_thostop (TYPE_1__*,int const*,int ) ;
 struct block* gen_wlanhostop (TYPE_1__*,int const*,int ) ;

struct block *
gen_broadcast(compiler_state_t *cstate, int proto)
{
 bpf_u_int32 hostmask;
 struct block *b0, *b1, *b2;
 static const u_char ebroadcast[] = { 0xff, 0xff, 0xff, 0xff, 0xff, 0xff };

 switch (proto) {

 case 130:
 case 128:
  switch (cstate->linktype) {
  case 143:
  case 142:
   return gen_ahostop(cstate, abroadcast, Q_DST);
  case 141:
  case 134:
  case 133:
   b1 = gen_prevlinkhdr_check(cstate);
   b0 = gen_ehostop(cstate, ebroadcast, Q_DST);
   if (b1 != ((void*)0))
    gen_and(b1, b0);
   return b0;
  case 140:
   return gen_fhostop(cstate, ebroadcast, Q_DST);
  case 139:
   return gen_thostop(cstate, ebroadcast, Q_DST);
  case 138:
  case 131:
  case 136:
  case 137:
  case 132:
   return gen_wlanhostop(cstate, ebroadcast, Q_DST);
  case 135:
   return gen_ipfchostop(cstate, ebroadcast, Q_DST);
  default:
   bpf_error(cstate, "not a broadcast link");
  }
  break;

 case 129:





  if (cstate->netmask == PCAP_NETMASK_UNKNOWN)
   bpf_error(cstate, "netmask not known, so 'ip broadcast' not supported");
  b0 = gen_linktype(cstate, ETHERTYPE_IP);
  hostmask = ~cstate->netmask;
  b1 = gen_mcmp(cstate, OR_LINKPL, 16, BPF_W, (bpf_int32)0, hostmask);
  b2 = gen_mcmp(cstate, OR_LINKPL, 16, BPF_W,
         (bpf_int32)(~0 & hostmask), hostmask);
  gen_or(b1, b2);
  gen_and(b0, b2);
  return b2;
 }
 bpf_error(cstate, "only link-layer/IP broadcast filters supported");

}
