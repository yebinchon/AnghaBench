
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_program {int bf_len; struct bpf_insn* bf_insns; } ;
struct bpf_insn {int code; int jt; int jf; int k; } ;


 int NBIDS ;
 int* bids ;
 int bpf_image (struct bpf_insn const*,int) ;
 int printf (char*,...) ;
 int puts (int ) ;

void
bpf_dump(const struct bpf_program *p, int option)
{
 const struct bpf_insn *insn;
 int i;
 int n = p->bf_len;

 insn = p->bf_insns;
 if (option > 2) {
  printf("%d\n", n);
  for (i = 0; i < n; ++insn, ++i) {
   printf("%u %u %u %u\n", insn->code,
          insn->jt, insn->jf, insn->k);
  }
  return ;
 }
 if (option > 1) {
  for (i = 0; i < n; ++insn, ++i)
   printf("{ 0x%x, %d, %d, 0x%08x },\n",
          insn->code, insn->jt, insn->jf, insn->k);
  return;
 }
 for (i = 0; i < n; ++insn, ++i) {






  puts(bpf_image(insn, i));
 }
}
