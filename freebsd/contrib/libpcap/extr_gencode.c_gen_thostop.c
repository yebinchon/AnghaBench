
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct block {int dummy; } ;
typedef int compiler_state_t ;


 int OR_LINKHDR ;
 int abort () ;
 int bpf_error (int *,char*) ;
 int gen_and (struct block*,struct block*) ;
 struct block* gen_bcmp (int *,int ,int,int,int const*) ;
 int gen_or (struct block*,struct block*) ;

__attribute__((used)) static struct block *
gen_thostop(compiler_state_t *cstate, const u_char *eaddr, int dir)
{
 register struct block *b0, *b1;

 switch (dir) {
 case 129:
  return gen_bcmp(cstate, OR_LINKHDR, 8, 6, eaddr);

 case 132:
  return gen_bcmp(cstate, OR_LINKHDR, 2, 6, eaddr);

 case 134:
  b0 = gen_thostop(cstate, eaddr, 129);
  b1 = gen_thostop(cstate, eaddr, 132);
  gen_and(b0, b1);
  return b1;

 case 133:
 case 131:
  b0 = gen_thostop(cstate, eaddr, 129);
  b1 = gen_thostop(cstate, eaddr, 132);
  gen_or(b0, b1);
  return b1;

 case 138:
  bpf_error(cstate, "'addr1' and 'address1' are only supported on 802.11");
  break;

 case 137:
  bpf_error(cstate, "'addr2' and 'address2' are only supported on 802.11");
  break;

 case 136:
  bpf_error(cstate, "'addr3' and 'address3' are only supported on 802.11");
  break;

 case 135:
  bpf_error(cstate, "'addr4' and 'address4' are only supported on 802.11");
  break;

 case 130:
  bpf_error(cstate, "'ra' is only supported on 802.11");
  break;

 case 128:
  bpf_error(cstate, "'ta' is only supported on 802.11");
  break;
 }
 abort();

}
