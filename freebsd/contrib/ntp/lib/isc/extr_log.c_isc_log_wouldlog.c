
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int debug_level; TYPE_1__* logconfig; } ;
typedef TYPE_2__ isc_log_t ;
typedef int isc_boolean_t ;
struct TYPE_4__ {int highest_level; scalar_t__ dynamic; } ;


 int ISC_FALSE ;
 int ISC_TF (int) ;

isc_boolean_t
isc_log_wouldlog(isc_log_t *lctx, int level) {
 if (lctx == ((void*)0) || lctx->logconfig == ((void*)0))
  return (ISC_FALSE);

 return (ISC_TF(level <= lctx->logconfig->highest_level ||
         (lctx->logconfig->dynamic &&
   level <= lctx->debug_level)));
}
