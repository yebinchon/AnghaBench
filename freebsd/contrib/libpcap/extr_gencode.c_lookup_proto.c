
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int compiler_state_t ;


 int ISO10589_ISIS ;
 int ISO8473_CLNP ;
 int ISO9542_ESIS ;
 int PROTO_UNDEF ;





 int bpf_error (int *,char*,char const*) ;
 int pcap_nametoeproto (char const*) ;
 int pcap_nametollc (char const*) ;
 int pcap_nametoproto (char const*) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int
lookup_proto(compiler_state_t *cstate, const char *name, int proto)
{
 register int v;

 switch (proto) {

 case 132:
 case 131:
 case 130:
  v = pcap_nametoproto(name);
  if (v == PROTO_UNDEF)
   bpf_error(cstate, "unknown ip proto '%s'", name);
  break;

 case 128:

  v = pcap_nametoeproto(name);
  if (v == PROTO_UNDEF) {
   v = pcap_nametollc(name);
   if (v == PROTO_UNDEF)
    bpf_error(cstate, "unknown ether proto '%s'", name);
  }
  break;

 case 129:
  if (strcmp(name, "esis") == 0)
   v = ISO9542_ESIS;
  else if (strcmp(name, "isis") == 0)
   v = ISO10589_ISIS;
  else if (strcmp(name, "clnp") == 0)
   v = ISO8473_CLNP;
  else
   bpf_error(cstate, "unknown osi proto '%s'", name);
  break;

 default:
  v = PROTO_UNDEF;
  break;
 }
 return v;
}
