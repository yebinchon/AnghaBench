
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ ssize_t ;
typedef int off_t ;
struct TYPE_4__ {int program; int pmfd; } ;
typedef TYPE_1__ kvm_t ;


 int _kvm_syserr (TYPE_1__*,int ,char*) ;
 scalar_t__ pread (int ,void*,size_t,int ) ;

__attribute__((used)) static int
_sparc64_read_phys(kvm_t *kd, off_t pos, void *buf, size_t size)
{


 if (pread(kd->pmfd, buf, size, pos) != (ssize_t)size) {
  _kvm_syserr(kd, kd->program, "_sparc64_read_phys: pread");
  return (0);
 }
 return (1);
}
