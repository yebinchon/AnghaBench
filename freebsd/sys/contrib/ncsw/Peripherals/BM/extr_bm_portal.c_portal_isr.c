
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ t_BmPortal ;


 int BMAN_PORTAL_FLAG_IRQ_FAST ;
 int __poll_portal_fast (TYPE_1__*) ;
 int __poll_portal_slow (TYPE_1__*) ;

__attribute__((used)) static void portal_isr(void *ptr)
{
    t_BmPortal *portal = ptr;

    if (portal->flags & BMAN_PORTAL_FLAG_IRQ_FAST)
        __poll_portal_fast(portal);
    __poll_portal_slow(portal);

}
