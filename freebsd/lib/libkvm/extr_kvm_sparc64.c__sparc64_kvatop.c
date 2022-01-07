
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uintmax_t ;
typedef int tte ;
struct sparc64_tte {void* tte_data; void* tte_vpn; } ;
typedef int off_t ;
struct TYPE_6__ {TYPE_4__* vmst; } ;
typedef TYPE_1__ kvm_t ;
typedef int kvaddr_t ;
struct TYPE_7__ {int vm_tsb_off; int vm_tsb_mask; } ;


 int KVM_OFF_NOTFOUND ;
 int SPARC64_DIRECT_TO_PHYS (int) ;
 int SPARC64_MIN_DIRECT_ADDRESS ;
 int SPARC64_PAGE_MASK ;
 int SPARC64_PAGE_SHIFT ;
 int SPARC64_PAGE_SIZE ;
 int SPARC64_TTE_GET_PA (struct sparc64_tte*) ;
 int SPARC64_TTE_SHIFT ;
 int _kvm_err (TYPE_1__*,int ,char*,int ) ;
 int _sparc64_find_off (TYPE_4__*,int,int) ;
 int _sparc64_read_phys (TYPE_1__*,int,struct sparc64_tte*,int) ;
 void* be64toh (void*) ;
 int sparc64_tte_match (struct sparc64_tte*,int) ;

__attribute__((used)) static int
_sparc64_kvatop(kvm_t *kd, kvaddr_t va, off_t *pa)
{
 struct sparc64_tte tte;
 off_t tte_off;
 kvaddr_t vpn;
 off_t pa_off;
 kvaddr_t pg_off;
 int rest;

 pg_off = va & SPARC64_PAGE_MASK;
 if (va >= SPARC64_MIN_DIRECT_ADDRESS)
  pa_off = SPARC64_DIRECT_TO_PHYS(va) & ~SPARC64_PAGE_MASK;
 else {
  vpn = va >> SPARC64_PAGE_SHIFT;
  tte_off = kd->vmst->vm_tsb_off +
      ((vpn & kd->vmst->vm_tsb_mask) << SPARC64_TTE_SHIFT);
  if (!_sparc64_read_phys(kd, tte_off, &tte, sizeof(tte)))
   goto invalid;
  tte.tte_vpn = be64toh(tte.tte_vpn);
  tte.tte_data = be64toh(tte.tte_data);
  if (!sparc64_tte_match(&tte, va))
   goto invalid;
  pa_off = SPARC64_TTE_GET_PA(&tte);
 }
 rest = SPARC64_PAGE_SIZE - pg_off;
 pa_off = _sparc64_find_off(kd->vmst, pa_off, rest);
 if (pa_off == KVM_OFF_NOTFOUND)
  goto invalid;
 *pa = pa_off + pg_off;
 return (rest);

invalid:
 _kvm_err(kd, 0, "invalid address (%jx)", (uintmax_t)va);
 return (0);
}
