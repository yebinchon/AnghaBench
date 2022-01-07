
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
struct block {int dummy; } ;
typedef enum e_offrel { ____Placeholder_e_offrel } e_offrel ;
typedef int compiler_state_t ;
typedef int bpf_int32 ;


 int BPF_B ;
 int BPF_H ;
 int BPF_W ;
 int gen_and (struct block*,struct block*) ;
 struct block* gen_cmp (int *,int,int,int ,int) ;

__attribute__((used)) static struct block *
gen_bcmp(compiler_state_t *cstate, enum e_offrel offrel, u_int offset,
    u_int size, const u_char *v)
{
 register struct block *b, *tmp;

 b = ((void*)0);
 while (size >= 4) {
  register const u_char *p = &v[size - 4];
  bpf_int32 w = ((bpf_int32)p[0] << 24) |
      ((bpf_int32)p[1] << 16) | ((bpf_int32)p[2] << 8) | p[3];

  tmp = gen_cmp(cstate, offrel, offset + size - 4, BPF_W, w);
  if (b != ((void*)0))
   gen_and(b, tmp);
  b = tmp;
  size -= 4;
 }
 while (size >= 2) {
  register const u_char *p = &v[size - 2];
  bpf_int32 w = ((bpf_int32)p[0] << 8) | p[1];

  tmp = gen_cmp(cstate, offrel, offset + size - 2, BPF_H, w);
  if (b != ((void*)0))
   gen_and(b, tmp);
  b = tmp;
  size -= 2;
 }
 if (size > 0) {
  tmp = gen_cmp(cstate, offrel, offset, BPF_B, (bpf_int32)v[0]);
  if (b != ((void*)0))
   gen_and(b, tmp);
  b = tmp;
 }
 return b;
}
