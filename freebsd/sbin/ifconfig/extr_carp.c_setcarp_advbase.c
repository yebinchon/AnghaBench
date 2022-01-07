
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afswtch {int dummy; } ;


 int atoi (char const*) ;
 int carpr_advbase ;
 int carpr_vhid ;
 int errx (int,char*) ;

__attribute__((used)) static void
setcarp_advbase(const char *val, int d, int s, const struct afswtch *afp)
{

 if (carpr_vhid == -1)
  errx(1, "advbase requires vhid");

 carpr_advbase = atoi(val);
}
