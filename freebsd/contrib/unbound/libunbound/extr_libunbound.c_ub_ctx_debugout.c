
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ub_ctx {int logfile_override; int cfglock; void* log_out; } ;
typedef int FILE ;


 int UB_NOERROR ;
 int lock_basic_lock (int *) ;
 int lock_basic_unlock (int *) ;
 int log_file (int *) ;

int ub_ctx_debugout(struct ub_ctx* ctx, void* out)
{
 lock_basic_lock(&ctx->cfglock);
 log_file((FILE*)out);
 ctx->logfile_override = 1;
 ctx->log_out = out;
 lock_basic_unlock(&ctx->cfglock);
 return UB_NOERROR;
}
