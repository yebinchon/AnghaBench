
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int program; } ;
typedef TYPE_1__ kvm_t ;


 int _kvm_err (TYPE_1__*,int ,char*,char const*,...) ;
 int errno ;
 int strerror (int ) ;
 int sysctlbyname (char const*,void*,size_t*,int *,int ) ;

__attribute__((used)) static int
getsysctl(kvm_t *kd, const char *name, void *ptr, size_t len)
{
 size_t nlen = len;
 if (sysctlbyname(name, ptr, &nlen, ((void*)0), 0) == -1) {
  _kvm_err(kd, kd->program, "cannot read sysctl %s:%s", name,
      strerror(errno));
  return (0);
 }
 if (nlen != len) {
  _kvm_err(kd, kd->program, "sysctl %s has unexpected size", name);
  return (0);
 }
 return (1);
}
