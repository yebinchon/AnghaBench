
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {long* __gregs; } ;
struct TYPE_11__ {int ss_flags; scalar_t__ ss_size; int ss_sp; } ;
struct TYPE_10__ {long* __bits; } ;
struct TYPE_13__ {int uc_flags; TYPE_4__ uc_mcontext; TYPE_3__ uc_stack; TYPE_2__ uc_sigmask; int uc_link; } ;
typedef TYPE_5__ ucontext_t ;
struct TYPE_9__ {int sival_int; } ;
struct TYPE_14__ {int si_signo; int si_errno; int si_code; TYPE_1__ si_value; } ;
typedef TYPE_6__ siginfo_t ;


 unsigned int __arraycount (long*) ;
 int printf (char*,unsigned int,...) ;

__attribute__((used)) static void
sig_debug(int signo, siginfo_t *info, ucontext_t *ctx)
{
 unsigned int i;

 printf("%d %p %p\n", signo, info, ctx);
 if (info != ((void*)0)) {
  printf("si_signo=%d\n", info->si_signo);
  printf("si_errno=%d\n", info->si_errno);
  printf("si_code=%d\n", info->si_code);
  printf("si_value.sival_int=%d\n", info->si_value.sival_int);
 }
 if (ctx != ((void*)0)) {
  printf("uc_flags 0x%x\n", ctx->uc_flags);
  printf("uc_link %p\n", ctx->uc_link);
  for (i = 0; i < __arraycount(ctx->uc_sigmask.__bits); i++)
   printf("uc_sigmask[%d] 0x%x\n", i,
       ctx->uc_sigmask.__bits[i]);
  printf("uc_stack %p %lu 0x%x\n", ctx->uc_stack.ss_sp,
      (unsigned long)ctx->uc_stack.ss_size,
      ctx->uc_stack.ss_flags);





 }
}
