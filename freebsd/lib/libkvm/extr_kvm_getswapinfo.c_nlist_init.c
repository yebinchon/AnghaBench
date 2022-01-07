
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int program; } ;
typedef TYPE_1__ kvm_t ;
struct TYPE_8__ {scalar_t__ n_value; } ;


 int KGET (size_t,int *) ;
 size_t NL_DMMAX ;
 size_t NL_SWTAILQ ;
 int _kvm_err (TYPE_1__*,int ,char*) ;
 int dmmax ;
 scalar_t__ kvm_nlist (TYPE_1__*,TYPE_3__*) ;
 TYPE_3__* kvm_swap_nl ;
 int kvm_swap_nl_cached ;

__attribute__((used)) static int
nlist_init(kvm_t *kd)
{

 if (kvm_swap_nl_cached)
  return (1);

 if (kvm_nlist(kd, kvm_swap_nl) < 0)
  return (0);


 if (kvm_swap_nl[NL_SWTAILQ].n_value == 0) {
  _kvm_err(kd, kd->program, "unable to find swtailq");
  return (0);
 }

 if (kvm_swap_nl[NL_DMMAX].n_value == 0) {
  _kvm_err(kd, kd->program, "unable to find dmmax");
  return (0);
 }


 KGET(NL_DMMAX, &dmmax);

 kvm_swap_nl_cached = 1;
 return (1);
}
