
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct vmstate {int mapsz; uintptr_t dmphdrsz; TYPE_2__* eh; void* ph; TYPE_2__* map; } ;
struct kerneldumpheader {int dummy; } ;
struct TYPE_8__ {int program; int pmfd; struct vmstate* vmst; } ;
typedef TYPE_1__ kvm_t ;
struct TYPE_9__ {int e_phoff; int e_phnum; int e_phentsize; } ;


 TYPE_2__* MAP_FAILED ;
 int MAP_PRIVATE ;
 int PROT_READ ;
 int _kvm_err (TYPE_1__*,int ,char*) ;
 size_t be16toh (int ) ;
 size_t be64toh (int ) ;
 uintptr_t dump_header_size (TYPE_2__*) ;
 void* mmap (int *,int,int ,int ,int ,int ) ;
 int munmap (TYPE_2__*,int) ;
 int valid_elf_header (TYPE_2__*) ;

__attribute__((used)) static int
powerpc_maphdrs(kvm_t *kd)
{
 struct vmstate *vm;
 size_t mapsz;

 vm = kd->vmst;

 vm->mapsz = sizeof(*vm->eh) + sizeof(struct kerneldumpheader);
 vm->map = mmap(((void*)0), vm->mapsz, PROT_READ, MAP_PRIVATE, kd->pmfd, 0);
 if (vm->map == MAP_FAILED) {
  _kvm_err(kd, kd->program, "cannot map corefile");
  return (-1);
 }
 vm->dmphdrsz = 0;
 vm->eh = vm->map;
 if (!valid_elf_header(vm->eh)) {






  vm->dmphdrsz = dump_header_size(vm->map);
  if (vm->dmphdrsz == 0)
   goto inval;
  vm->eh = (void *)((uintptr_t)vm->map + vm->dmphdrsz);
  if (!valid_elf_header(vm->eh))
   goto inval;
 }
 mapsz = be16toh(vm->eh->e_phentsize) * be16toh(vm->eh->e_phnum) +
     be64toh(vm->eh->e_phoff);
 munmap(vm->map, vm->mapsz);


 vm->mapsz = vm->dmphdrsz + mapsz;
 vm->map = mmap(((void*)0), vm->mapsz, PROT_READ, MAP_PRIVATE, kd->pmfd, 0);
 if (vm->map == MAP_FAILED) {
  _kvm_err(kd, kd->program, "cannot map corefile headers");
  return (-1);
 }
 vm->eh = (void *)((uintptr_t)vm->map + vm->dmphdrsz);
 vm->ph = (void *)((uintptr_t)vm->eh +
     (uintptr_t)be64toh(vm->eh->e_phoff));
 return (0);

 inval:
 _kvm_err(kd, kd->program, "invalid corefile");
 return (-1);
}
