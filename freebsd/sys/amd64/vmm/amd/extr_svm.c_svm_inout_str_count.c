
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct svm_regctx {int sctx_rcx; } ;



__attribute__((used)) static uint64_t
svm_inout_str_count(struct svm_regctx *regs, int rep)
{
 uint64_t val;

 val = rep ? regs->sctx_rcx : 1;

 return (val);
}
