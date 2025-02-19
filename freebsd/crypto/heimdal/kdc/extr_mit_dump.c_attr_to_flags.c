
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int postdate; int forwardable; int initial; int renewable; int proxiable; int invalid; int require_preauth; int require_hwauth; int server; int change_pw; int client; } ;
typedef TYPE_1__ HDBFlags ;


 unsigned int KRB5_KDB_DISALLOW_ALL_TIX ;
 unsigned int KRB5_KDB_DISALLOW_FORWARDABLE ;
 unsigned int KRB5_KDB_DISALLOW_POSTDATED ;
 unsigned int KRB5_KDB_DISALLOW_PROXIABLE ;
 unsigned int KRB5_KDB_DISALLOW_RENEWABLE ;
 unsigned int KRB5_KDB_DISALLOW_SVR ;
 unsigned int KRB5_KDB_DISALLOW_TGT_BASED ;
 unsigned int KRB5_KDB_PWCHANGE_SERVICE ;
 unsigned int KRB5_KDB_REQUIRES_HW_AUTH ;
 unsigned int KRB5_KDB_REQUIRES_PRE_AUTH ;

__attribute__((used)) static void
attr_to_flags(unsigned attr, HDBFlags *flags)
{
    flags->postdate = !(attr & KRB5_KDB_DISALLOW_POSTDATED);
    flags->forwardable = !(attr & KRB5_KDB_DISALLOW_FORWARDABLE);
    flags->initial = !!(attr & KRB5_KDB_DISALLOW_TGT_BASED);
    flags->renewable = !(attr & KRB5_KDB_DISALLOW_RENEWABLE);
    flags->proxiable = !(attr & KRB5_KDB_DISALLOW_PROXIABLE);

    flags->invalid = !!(attr & KRB5_KDB_DISALLOW_ALL_TIX);
    flags->require_preauth = !!(attr & KRB5_KDB_REQUIRES_PRE_AUTH);
    flags->require_hwauth = !!(attr & KRB5_KDB_REQUIRES_HW_AUTH);
    flags->server = !(attr & KRB5_KDB_DISALLOW_SVR);
    flags->change_pw = !!(attr & KRB5_KDB_PWCHANGE_SERVICE);
    flags->client = 1;
}
