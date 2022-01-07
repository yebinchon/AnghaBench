
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
struct icode {int dummy; } ;
struct bpf_insn {int dummy; } ;
struct block {int dummy; } ;
struct TYPE_3__ {struct bpf_insn* ftail; struct bpf_insn* fstart; } ;
typedef TYPE_1__ conv_state_t ;
typedef int compiler_state_t ;


 int bpf_error (int *,char*) ;
 scalar_t__ convert_code_r (int *,TYPE_1__*,struct icode*,struct block*) ;
 int count_stmts (struct icode*,struct block*) ;
 int free (struct bpf_insn*) ;
 scalar_t__ malloc (int) ;
 int memset (char*,int ,int) ;
 int unMarkAll (struct icode*) ;

struct bpf_insn *
icode_to_fcode(compiler_state_t *cstate, struct icode *ic,
    struct block *root, u_int *lenp)
{
 u_int n;
 struct bpf_insn *fp;
 conv_state_t conv_state;





 for (;;) {
     unMarkAll(ic);
     n = *lenp = count_stmts(ic, root);

     fp = (struct bpf_insn *)malloc(sizeof(*fp) * n);
     if (fp == ((void*)0))
      bpf_error(cstate, "malloc");
     memset((char *)fp, 0, sizeof(*fp) * n);
     conv_state.fstart = fp;
     conv_state.ftail = fp + n;

     unMarkAll(ic);
     if (convert_code_r(cstate, &conv_state, ic, root))
  break;
     free(fp);
 }

 return fp;
}
