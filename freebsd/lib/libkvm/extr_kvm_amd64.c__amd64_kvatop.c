
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;
typedef int kvm_t ;
typedef int kvaddr_t ;


 scalar_t__ ISALIVE (int *) ;
 int _amd64_vatop (int *,int ,int *) ;
 int _kvm_err (int *,int ,char*) ;

__attribute__((used)) static int
_amd64_kvatop(kvm_t *kd, kvaddr_t va, off_t *pa)
{

 if (ISALIVE(kd)) {
  _kvm_err(kd, 0, "kvm_kvatop called in live kernel!");
  return (0);
 }
 return (_amd64_vatop(kd, va, pa));
}
