
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_log_t ;


 int * isc_lctx ;

void
isc_log_setcontext(isc_log_t *lctx) {
 isc_lctx = lctx;
}
