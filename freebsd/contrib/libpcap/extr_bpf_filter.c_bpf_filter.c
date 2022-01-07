
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
struct bpf_insn {int dummy; } ;


 int bpf_filter_with_aux_data (struct bpf_insn const*,int const*,int ,int ,int *) ;

u_int
bpf_filter(const struct bpf_insn *pc, const u_char *p, u_int wirelen,
    u_int buflen)
{
 return bpf_filter_with_aux_data(pc, p, wirelen, buflen, ((void*)0));
}
