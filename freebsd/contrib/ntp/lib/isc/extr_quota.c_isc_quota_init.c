
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int isc_result_t ;
struct TYPE_3__ {int max; int lock; scalar_t__ soft; scalar_t__ used; } ;
typedef TYPE_1__ isc_quota_t ;


 int isc_mutex_init (int *) ;

isc_result_t
isc_quota_init(isc_quota_t *quota, int max) {
 quota->max = max;
 quota->used = 0;
 quota->soft = 0;
 return (isc_mutex_init(&quota->lock));
}
