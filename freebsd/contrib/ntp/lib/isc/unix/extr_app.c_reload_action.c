
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int want_reload; } ;


 int ISC_TRUE ;
 int UNUSED (int) ;
 TYPE_1__ isc_g_appctx ;

__attribute__((used)) static void
reload_action(int arg) {
 UNUSED(arg);
 isc_g_appctx.want_reload = ISC_TRUE;
}
