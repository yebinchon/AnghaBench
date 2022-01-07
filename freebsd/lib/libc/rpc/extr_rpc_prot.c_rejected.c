
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* s2; void* s1; } ;
struct rpc_err {TYPE_1__ re_lb; int re_status; } ;
typedef void* int32_t ;
typedef enum reject_stat { ____Placeholder_reject_stat } reject_stat ;



 scalar_t__ MSG_DENIED ;
 int RPC_AUTHERROR ;
 int RPC_FAILED ;

 int RPC_VERSMISMATCH ;
 int assert (int ) ;

__attribute__((used)) static void
rejected(enum reject_stat rjct_stat, struct rpc_err *error)
{

 assert(error != ((void*)0));

 switch (rjct_stat) {
 case 128:
  error->re_status = RPC_VERSMISMATCH;
  return;

 case 129:
  error->re_status = RPC_AUTHERROR;
  return;
 }


 error->re_status = RPC_FAILED;
 error->re_lb.s1 = (int32_t)MSG_DENIED;
 error->re_lb.s2 = (int32_t)rjct_stat;
}
