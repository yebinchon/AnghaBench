
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct afswtch {int dummy; } ;
struct TYPE_3__ {int ecm; } ;


 int callback_register (int ,TYPE_1__*) ;
 int getregdomain (int) ;
 TYPE_1__ regdomain ;
 int setregdomain_cb ;

__attribute__((used)) static void
set80211ecm(const char *val, int d, int s, const struct afswtch *rafp)
{
 getregdomain(s);
 regdomain.ecm = d;
 callback_register(setregdomain_cb, &regdomain);
}
