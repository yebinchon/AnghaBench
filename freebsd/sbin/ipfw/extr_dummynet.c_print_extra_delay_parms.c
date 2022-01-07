
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dn_profile {double samples_no; double loss_level; char* name; } ;


 int printf (char*,char*,double,double) ;

__attribute__((used)) static void
print_extra_delay_parms(struct dn_profile *p)
{
 double loss;
 if (p->samples_no <= 0)
  return;

 loss = p->loss_level;
 loss /= p->samples_no;
 printf("\t profile: name \"%s\" loss %f samples %d\n",
  p->name, loss, p->samples_no);
}
