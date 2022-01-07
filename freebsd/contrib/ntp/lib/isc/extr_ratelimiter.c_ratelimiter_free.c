
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mctx; int lock; } ;
typedef TYPE_1__ isc_ratelimiter_t ;


 int DESTROYLOCK (int *) ;
 int isc_mem_put (int ,TYPE_1__*,int) ;

__attribute__((used)) static void
ratelimiter_free(isc_ratelimiter_t *rl) {
 DESTROYLOCK(&rl->lock);
 isc_mem_put(rl->mctx, rl, sizeof(*rl));
}
