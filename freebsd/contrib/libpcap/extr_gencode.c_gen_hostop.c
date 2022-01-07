
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct block {int dummy; } ;
typedef int compiler_state_t ;
typedef scalar_t__ bpf_u_int32 ;
typedef int bpf_int32 ;


 int BPF_W ;
 int OR_LINKPL ;
 int abort () ;
 int bpf_error (int *,char*) ;
 int gen_and (struct block*,struct block*) ;
 struct block* gen_linktype (int *,int) ;
 struct block* gen_mcmp (int *,int ,int ,int ,int ,scalar_t__) ;
 int gen_or (struct block*,struct block*) ;

__attribute__((used)) static struct block *
gen_hostop(compiler_state_t *cstate, bpf_u_int32 addr, bpf_u_int32 mask,
    int dir, int proto, u_int src_off, u_int dst_off)
{
 struct block *b0, *b1;
 u_int offset;

 switch (dir) {

 case 129:
  offset = src_off;
  break;

 case 132:
  offset = dst_off;
  break;

 case 134:
  b0 = gen_hostop(cstate, addr, mask, 129, proto, src_off, dst_off);
  b1 = gen_hostop(cstate, addr, mask, 132, proto, src_off, dst_off);
  gen_and(b0, b1);
  return b1;

 case 131:
 case 133:
  b0 = gen_hostop(cstate, addr, mask, 129, proto, src_off, dst_off);
  b1 = gen_hostop(cstate, addr, mask, 132, proto, src_off, dst_off);
  gen_or(b0, b1);
  return b1;

 case 138:
  bpf_error(cstate, "'addr1' and 'address1' are not valid qualifiers for addresses other than 802.11 MAC addresses");
  break;

 case 137:
  bpf_error(cstate, "'addr2' and 'address2' are not valid qualifiers for addresses other than 802.11 MAC addresses");
  break;

 case 136:
  bpf_error(cstate, "'addr3' and 'address3' are not valid qualifiers for addresses other than 802.11 MAC addresses");
  break;

 case 135:
  bpf_error(cstate, "'addr4' and 'address4' are not valid qualifiers for addresses other than 802.11 MAC addresses");
  break;

 case 130:
  bpf_error(cstate, "'ra' is not a valid qualifier for addresses other than 802.11 MAC addresses");
  break;

 case 128:
  bpf_error(cstate, "'ta' is not a valid qualifier for addresses other than 802.11 MAC addresses");
  break;

 default:
  abort();
 }
 b0 = gen_linktype(cstate, proto);
 b1 = gen_mcmp(cstate, OR_LINKPL, offset, BPF_W, (bpf_int32)addr, mask);
 gen_and(b0, b1);
 return b1;
}
