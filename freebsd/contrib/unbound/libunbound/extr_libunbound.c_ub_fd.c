
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ub_ctx {int rr_pipe; } ;


 int tube_read_fd (int ) ;

int
ub_fd(struct ub_ctx* ctx)
{
 return tube_read_fd(ctx->rr_pipe);
}
