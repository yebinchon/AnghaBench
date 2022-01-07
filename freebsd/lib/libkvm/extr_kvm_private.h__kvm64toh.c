
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_4__ {scalar_t__* e_ident; } ;
struct TYPE_5__ {TYPE_1__ nlehdr; } ;
typedef TYPE_2__ kvm_t ;


 size_t EI_DATA ;
 scalar_t__ ELFDATA2LSB ;
 int be64toh (int ) ;
 int le64toh (int ) ;

__attribute__((used)) static inline uint64_t
_kvm64toh(kvm_t *kd, uint64_t val)
{

 if (kd->nlehdr.e_ident[EI_DATA] == ELFDATA2LSB)
  return (le64toh(val));
 else
  return (be64toh(val));
}
