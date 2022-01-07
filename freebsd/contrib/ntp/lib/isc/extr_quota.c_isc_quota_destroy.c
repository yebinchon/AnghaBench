
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ used; int lock; scalar_t__ soft; scalar_t__ max; } ;
typedef TYPE_1__ isc_quota_t ;


 int DESTROYLOCK (int *) ;
 int INSIST (int) ;

void
isc_quota_destroy(isc_quota_t *quota) {
 INSIST(quota->used == 0);
 quota->max = 0;
 quota->used = 0;
 quota->soft = 0;
 DESTROYLOCK(&quota->lock);
}
