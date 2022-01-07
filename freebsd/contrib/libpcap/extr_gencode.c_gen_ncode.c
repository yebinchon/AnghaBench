
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qual {int proto; int dir; int addr; } ;
struct block {int dummy; } ;
typedef int compiler_state_t ;
typedef int bpf_u_int32 ;


 int IPPROTO_SCTP ;
 int IPPROTO_TCP ;
 int IPPROTO_UDP ;
 int PROTO_UNDEF ;
 int Q_DECNET ;



 int Q_LINK ;





 int Q_SCTP ;
 int Q_TCP ;
 int Q_UDP ;

 int __pcap_atodn (char const*,int*) ;
 int __pcap_atoin (char const*,int*) ;
 int abort () ;
 int bpf_error (int *,char*,...) ;
 struct block* gen_host (int *,int,int,int,int,int) ;
 int gen_or (int ,struct block*) ;
 struct block* gen_port (int *,int,int,int) ;
 int gen_port6 (int *,int,int,int) ;
 struct block* gen_portrange (int *,int,int,int,int) ;
 int gen_portrange6 (int *,int,int,int,int) ;
 struct block* gen_proto (int *,int,int,int) ;
 struct block* gen_protochain (int *,int,int,int) ;
 int syntax (int *) ;

struct block *
gen_ncode(compiler_state_t *cstate, const char *s, bpf_u_int32 v, struct qual q)
{
 bpf_u_int32 mask;
 int proto = q.proto;
 int dir = q.dir;
 register int vlen;

 if (s == ((void*)0))
  vlen = 32;
 else if (q.proto == Q_DECNET) {
  vlen = __pcap_atodn(s, &v);
  if (vlen == 0)
   bpf_error(cstate, "malformed decnet address '%s'", s);
 } else
  vlen = __pcap_atoin(s, &v);

 switch (q.addr) {

 case 136:
 case 134:
 case 133:
  if (proto == Q_DECNET)
   return gen_host(cstate, v, 0, proto, dir, q.addr);
  else if (proto == Q_LINK) {
   bpf_error(cstate, "illegal link layer address");
  } else {
   mask = 0xffffffff;
   if (s == ((void*)0) && q.addr == 133) {

    while (v && (v & 0xff000000) == 0) {
     v <<= 8;
     mask <<= 8;
    }
   } else {

    v <<= 32 - vlen;
    mask <<= 32 - vlen ;
   }
   return gen_host(cstate, v, mask, proto, dir, q.addr);
  }

 case 132:
  if (proto == Q_UDP)
   proto = IPPROTO_UDP;
  else if (proto == Q_TCP)
   proto = IPPROTO_TCP;
  else if (proto == Q_SCTP)
   proto = IPPROTO_SCTP;
  else if (proto == 136)
   proto = PROTO_UNDEF;
  else
   bpf_error(cstate, "illegal qualifier of 'port'");

  if (v > 65535)
   bpf_error(cstate, "illegal port number %u > 65535", v);

     {
  struct block *b;
  b = gen_port(cstate, (int)v, proto, dir);
  gen_or(gen_port6(cstate, (int)v, proto, dir), b);
  return b;
     }

 case 131:
  if (proto == Q_UDP)
   proto = IPPROTO_UDP;
  else if (proto == Q_TCP)
   proto = IPPROTO_TCP;
  else if (proto == Q_SCTP)
   proto = IPPROTO_SCTP;
  else if (proto == 136)
   proto = PROTO_UNDEF;
  else
   bpf_error(cstate, "illegal qualifier of 'portrange'");

  if (v > 65535)
   bpf_error(cstate, "illegal port number %u > 65535", v);

     {
  struct block *b;
  b = gen_portrange(cstate, (int)v, (int)v, proto, dir);
  gen_or(gen_portrange6(cstate, (int)v, (int)v, proto, dir), b);
  return b;
     }

 case 135:
  bpf_error(cstate, "'gateway' requires a name");


 case 130:
  return gen_proto(cstate, (int)v, proto, dir);

 case 129:
  return gen_protochain(cstate, (int)v, proto, dir);

 case 128:
  syntax(cstate);


 default:
  abort();

 }

}
