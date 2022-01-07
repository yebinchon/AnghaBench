
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
struct ccuser {int uarg; TYPE_2__* cc; } ;
struct TYPE_4__ {TYPE_1__* funcs; } ;
struct TYPE_3__ {int (* send_user ) (struct ccuser*,int ,int ,void*,size_t) ;} ;


 int stub1 (struct ccuser*,int ,int ,void*,size_t) ;

__attribute__((used)) static __inline void
cc_user_send(struct ccuser *user, u_int op, void *arg, size_t len)
{
 user->cc->funcs->send_user(user, user->uarg, op, arg, len);
}
