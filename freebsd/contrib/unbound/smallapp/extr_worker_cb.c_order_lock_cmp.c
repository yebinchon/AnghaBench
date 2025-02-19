
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct order_id {scalar_t__ thr; scalar_t__ instance; } ;



int order_lock_cmp(const void* e1, const void* e2)
{
        const struct order_id* o1 = e1;
        const struct order_id* o2 = e2;
        if(o1->thr < o2->thr) return -1;
        if(o1->thr > o2->thr) return 1;
        if(o1->instance < o2->instance) return -1;
        if(o1->instance > o2->instance) return 1;
        return 0;
}
