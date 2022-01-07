
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qual {int addr; int dir; int proto; } ;
struct block {int dummy; } ;
typedef int compiler_state_t ;
typedef int bpf_u_int32 ;



 int __pcap_atoin (char const*,int*) ;
 int bpf_error (int *,char*,...) ;
 struct block* gen_host (int *,int,int,int ,int ,int) ;

struct block *
gen_mcode(compiler_state_t *cstate, const char *s1, const char *s2,
    unsigned int masklen, struct qual q)
{
 register int nlen, mlen;
 bpf_u_int32 n, m;

 nlen = __pcap_atoin(s1, &n);

 n <<= 32 - nlen;

 if (s2 != ((void*)0)) {
  mlen = __pcap_atoin(s2, &m);

  m <<= 32 - mlen;
  if ((n & ~m) != 0)
   bpf_error(cstate, "non-network bits set in \"%s mask %s\"",
       s1, s2);
 } else {

  if (masklen > 32)
   bpf_error(cstate, "mask length must be <= 32");
  if (masklen == 0) {




   m = 0;
  } else
   m = 0xffffffff << (32 - masklen);
  if ((n & ~m) != 0)
   bpf_error(cstate, "non-network bits set in \"%s/%d\"",
       s1, masklen);
 }

 switch (q.addr) {

 case 128:
  return gen_host(cstate, n, m, q.proto, q.dir, q.addr);

 default:
  bpf_error(cstate, "Mask syntax for networks only");

 }

}
