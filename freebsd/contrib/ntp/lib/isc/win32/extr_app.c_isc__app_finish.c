
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DESTROYLOCK (int *) ;
 int lock ;

void
isc__app_finish(void) {
 DESTROYLOCK(&lock);
}
