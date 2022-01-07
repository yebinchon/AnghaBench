
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_aliasreq {scalar_t__ ifra_vhid; } ;
struct in6_aliasreq {scalar_t__ ifra_vhid; } ;
struct afswtch {int af_af; scalar_t__ af_name; scalar_t__ af_addreq; } ;




 scalar_t__ CARP_MAXVHID ;
 scalar_t__ atoi (char const*) ;
 int callback_register (int ,int *) ;
 scalar_t__ carpr_vhid ;
 int errx (int,char*,scalar_t__) ;
 int setcarp_callback ;

__attribute__((used)) static void
setcarp_vhid(const char *val, int d, int s, const struct afswtch *afp)
{

 carpr_vhid = atoi(val);

 if (carpr_vhid <= 0 || carpr_vhid > CARP_MAXVHID)
  errx(1, "vhid must be greater than 0 and less than %u",
      CARP_MAXVHID);

 switch (afp->af_af) {
 default:
  errx(1, "%s doesn't support carp(4)", afp->af_name);
 }

 callback_register(setcarp_callback, ((void*)0));
}
