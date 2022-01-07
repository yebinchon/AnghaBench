
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int (* ub_callback_type ) (void*,int,struct ub_result*) ;
struct ub_result {int dummy; } ;
struct ub_ctx {int dummy; } ;


 int process_answer_detail (struct ub_ctx*,int *,int ,int (*) (void*,int,struct ub_result*),void**,int*,struct ub_result**) ;
 int stub1 (void*,int,struct ub_result*) ;

__attribute__((used)) static int
process_answer(struct ub_ctx* ctx, uint8_t* msg, uint32_t len)
{
 int err;
 ub_callback_type cb;
 void* cbarg;
 struct ub_result* res;
 int r;

 r = process_answer_detail(ctx, msg, len, &cb, &cbarg, &err, &res);



 if(r == 2)
  (*cb)(cbarg, err, res);

 return r;
}
