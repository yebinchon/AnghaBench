
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* s2; void* s1; } ;
struct rpc_err {TYPE_1__ re_lb; int re_status; } ;
typedef void* int32_t ;
typedef enum accept_stat { ____Placeholder_accept_stat } accept_stat ;



 scalar_t__ MSG_ACCEPTED ;



 int RPC_CANTDECODEARGS ;
 int RPC_FAILED ;
 int RPC_PROCUNAVAIL ;
 int RPC_PROGUNAVAIL ;
 int RPC_PROGVERSMISMATCH ;
 int RPC_SUCCESS ;
 int RPC_SYSTEMERROR ;


 int assert (int ) ;

__attribute__((used)) static void
accepted(enum accept_stat acpt_stat, struct rpc_err *error)
{

 assert(error != ((void*)0));

 switch (acpt_stat) {

 case 130:
  error->re_status = RPC_PROGUNAVAIL;
  return;

 case 131:
  error->re_status = RPC_PROGVERSMISMATCH;
  return;

 case 132:
  error->re_status = RPC_PROCUNAVAIL;
  return;

 case 133:
  error->re_status = RPC_CANTDECODEARGS;
  return;

 case 128:
  error->re_status = RPC_SYSTEMERROR;
  return;

 case 129:
  error->re_status = RPC_SUCCESS;
  return;
 }


 error->re_status = RPC_FAILED;
 error->re_lb.s1 = (int32_t)MSG_ACCEPTED;
 error->re_lb.s2 = (int32_t)acpt_stat;
}
