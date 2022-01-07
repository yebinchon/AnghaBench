
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct client {int flags; } ;
typedef TYPE_1__* heim_sipc ;
struct TYPE_3__ {struct client* mech; } ;


 int WAITING_CLOSE ;

__attribute__((used)) static int
socket_release(heim_sipc ctx)
{
    struct client *c = ctx->mech;
    c->flags |= WAITING_CLOSE;
    return 0;
}
