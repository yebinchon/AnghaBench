
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__* now; } ;
struct worker {scalar_t__ err_limit_time; int err_limit_count; TYPE_1__ env; } ;


 scalar_t__ ERROR_RATELIMIT ;

__attribute__((used)) static int
worker_err_ratelimit(struct worker* worker, int err)
{
 if(worker->err_limit_time == *worker->env.now) {

  if(worker->err_limit_count++ > ERROR_RATELIMIT)
   return -1;
 } else {

  worker->err_limit_time = *worker->env.now;
  worker->err_limit_count = 1;
 }
 return err;
}
