
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int version; } ;
struct vmstate {TYPE_1__ hdr; } ;
typedef int off_t ;
struct TYPE_9__ {scalar_t__ vmst; } ;
typedef TYPE_2__ kvm_t ;
typedef int kvaddr_t ;


 scalar_t__ ISALIVE (TYPE_2__*) ;
 int _amd64_minidump_vatop (TYPE_2__*,int ,int *) ;
 int _amd64_minidump_vatop_v1 (TYPE_2__*,int ,int *) ;
 int _kvm_err (TYPE_2__*,int ,char*) ;

__attribute__((used)) static int
_amd64_minidump_kvatop(kvm_t *kd, kvaddr_t va, off_t *pa)
{

 if (ISALIVE(kd)) {
  _kvm_err(kd, 0,
      "_amd64_minidump_kvatop called in live kernel!");
  return (0);
 }
 if (((struct vmstate *)kd->vmst)->hdr.version == 1)
  return (_amd64_minidump_vatop_v1(kd, va, pa));
 else
  return (_amd64_minidump_vatop(kd, va, pa));
}
