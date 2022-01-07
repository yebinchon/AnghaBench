
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ccuser {int uarg; TYPE_2__* cc; } ;
struct TYPE_4__ {TYPE_1__* funcs; } ;
struct TYPE_3__ {int (* respond_user ) (struct ccuser*,int ,int,int ,int *,int ) ;} ;


 int ATMRESP_NONE ;
 int stub1 (struct ccuser*,int ,int,int ,int *,int ) ;

__attribute__((used)) static __inline void
cc_user_err(struct ccuser *user, int err)
{
 user->cc->funcs->respond_user(user, user->uarg,
     err, ATMRESP_NONE, ((void*)0), 0);
}
