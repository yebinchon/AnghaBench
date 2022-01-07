
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ result; } ;
typedef TYPE_1__ isc_keyboard_t ;
typedef int isc_boolean_t ;


 scalar_t__ ISC_R_CANCELED ;
 int ISC_TF (int) ;

isc_boolean_t
isc_keyboard_canceled(isc_keyboard_t *keyboard) {
 return (ISC_TF(keyboard->result == ISC_R_CANCELED));
}
