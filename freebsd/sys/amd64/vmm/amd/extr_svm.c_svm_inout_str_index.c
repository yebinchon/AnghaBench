
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct svm_regctx {int sctx_rsi; int sctx_rdi; } ;



__attribute__((used)) static uint64_t
svm_inout_str_index(struct svm_regctx *regs, int in)
{
 uint64_t val;

 val = in ? regs->sctx_rdi : regs->sctx_rsi;

 return (val);
}
