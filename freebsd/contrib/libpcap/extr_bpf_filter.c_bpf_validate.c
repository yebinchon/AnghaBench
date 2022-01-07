
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct bpf_insn {size_t k; size_t jt; size_t jf; int code; } ;






 int const BPF_CLASS (int ) ;
 int BPF_K ;





 size_t BPF_MEMWORDS ;


 int BPF_MODE (int ) ;



 int BPF_OP (int ) ;



 int BPF_SRC (int ) ;





int
bpf_validate(const struct bpf_insn *f, int len)
{
 u_int i, from;
 const struct bpf_insn *p;

 if (len < 1)
  return 0;

 for (i = 0; i < (u_int)len; ++i) {
  p = &f[i];
  switch (BPF_CLASS(p->code)) {



  case 144:
  case 143:
   switch (BPF_MODE(p->code)) {
   case 152:
    break;
   case 157:
   case 151:
   case 137:





    break;
   case 140:
    if (p->k >= BPF_MEMWORDS)
     return 0;
    break;
   case 142:
    break;
   default:
    return 0;
   }
   break;
  case 131:
  case 130:
   if (p->k >= BPF_MEMWORDS)
    return 0;
   break;
  case 155:
   switch (BPF_OP(p->code)) {
   case 156:
   case 129:
   case 136:
   case 134:
   case 154:
   case 128:
   case 141:
   case 132:
   case 135:
    break;
   case 153:
   case 138:




    if (BPF_SRC(p->code) == BPF_K && p->k == 0)
     return 0;
    break;
   default:
    return 0;
   }
   break;
  case 146:
   from = i + 1;
   switch (BPF_OP(p->code)) {
   case 150:
    if (from + p->k >= (u_int)len)
     return 0;
    break;
   case 149:
   case 147:
   case 148:
   case 145:
    if (from + p->jt >= (u_int)len || from + p->jf >= (u_int)len)
     return 0;
    break;
   default:
    return 0;
   }
   break;
  case 133:
   break;
  case 139:
   break;
  default:
   return 0;
  }
 }
 return BPF_CLASS(f[len - 1].code) == 133;
}
