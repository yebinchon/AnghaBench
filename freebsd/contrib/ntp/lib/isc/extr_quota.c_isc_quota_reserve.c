
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int isc_result_t ;
struct TYPE_3__ {scalar_t__ max; scalar_t__ used; scalar_t__ soft; int lock; } ;
typedef TYPE_1__ isc_quota_t ;


 int ISC_R_QUOTA ;
 int ISC_R_SOFTQUOTA ;
 int ISC_R_SUCCESS ;
 int LOCK (int *) ;
 int UNLOCK (int *) ;

isc_result_t
isc_quota_reserve(isc_quota_t *quota) {
 isc_result_t result;
 LOCK(&quota->lock);
 if (quota->max == 0 || quota->used < quota->max) {
  if (quota->soft == 0 || quota->used < quota->soft)
   result = ISC_R_SUCCESS;
  else
   result = ISC_R_SOFTQUOTA;
  quota->used++;
 } else
  result = ISC_R_QUOTA;
 UNLOCK(&quota->lock);
 return (result);
}
