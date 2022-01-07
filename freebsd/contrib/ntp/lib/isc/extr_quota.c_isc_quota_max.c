
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int max; int lock; } ;
typedef TYPE_1__ isc_quota_t ;


 int LOCK (int *) ;
 int UNLOCK (int *) ;

void
isc_quota_max(isc_quota_t *quota, int max) {
 LOCK(&quota->lock);
 quota->max = max;
 UNLOCK(&quota->lock);
}
