
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {scalar_t__* e_ident; } ;
struct TYPE_5__ {TYPE_1__ nlehdr; } ;
typedef TYPE_2__ kvm_t ;


 size_t EI_DATA ;
 scalar_t__ ELFDATA2LSB ;
 int be32toh (int ) ;
 int le32toh (int ) ;

__attribute__((used)) static inline uint32_t
_kvm32toh(kvm_t *kd, uint32_t val)
{

 if (kd->nlehdr.e_ident[EI_DATA] == ELFDATA2LSB)
  return (le32toh(val));
 else
  return (be32toh(val));
}
