
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* res_state ;
struct TYPE_3__ {int res_h_errno; } ;


 int h_errno ;

void
__h_errno_set(res_state res, int err)
{
 h_errno = res->res_h_errno = err;
}
