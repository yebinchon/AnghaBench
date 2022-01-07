
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ used; int lock; } ;
typedef TYPE_1__ isc_quota_t ;


 int INSIST (int) ;
 int LOCK (int *) ;
 int UNLOCK (int *) ;

void
isc_quota_release(isc_quota_t *quota) {
 LOCK(&quota->lock);
 INSIST(quota->used > 0);
 quota->used--;
 UNLOCK(&quota->lock);
}
