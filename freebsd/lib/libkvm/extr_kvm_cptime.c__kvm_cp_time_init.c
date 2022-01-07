
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kvm_t ;


 int kvm_cp_time_cached ;
 int kvm_cp_time_nl ;
 scalar_t__ kvm_nlist (int *,int ) ;

__attribute__((used)) static int
_kvm_cp_time_init(kvm_t *kd)
{

 if (kvm_nlist(kd, kvm_cp_time_nl) < 0)
  return (-1);
 kvm_cp_time_cached = 1;
 return (0);
}
