
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int isc_taskmgr_t ;
typedef int isc_boolean_t ;
struct TYPE_4__ {int lock; } ;
typedef TYPE_1__ isc__taskmgr_t ;


 int ISC_FALSE ;
 int LOCK (int *) ;
 int UNLOCK (int *) ;
 int empty_readyq (TYPE_1__*) ;
 TYPE_1__* taskmgr ;

isc_boolean_t
isc__taskmgr_ready(isc_taskmgr_t *manager0) {
 isc__taskmgr_t *manager = (void*)manager0;
 isc_boolean_t is_ready;





 if (manager == ((void*)0))
  return (ISC_FALSE);

 LOCK(&manager->lock);
 is_ready = !empty_readyq(manager);
 UNLOCK(&manager->lock);

 return (is_ready);
}
