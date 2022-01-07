
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm {int dummy; } ;
struct vioapic {TYPE_1__* rtbl; int mtx; struct vm* vm; } ;
struct TYPE_2__ {int reg; } ;


 int MTX_SPIN ;
 int M_VIOAPIC ;
 int M_WAITOK ;
 int M_ZERO ;
 int REDIR_ENTRIES ;
 struct vioapic* malloc (int,int ,int) ;
 int mtx_init (int *,char*,int *,int ) ;

struct vioapic *
vioapic_init(struct vm *vm)
{
 int i;
 struct vioapic *vioapic;

 vioapic = malloc(sizeof(struct vioapic), M_VIOAPIC, M_WAITOK | M_ZERO);

 vioapic->vm = vm;
 mtx_init(&vioapic->mtx, "vioapic lock", ((void*)0), MTX_SPIN);


 for (i = 0; i < REDIR_ENTRIES; i++)
  vioapic->rtbl[i].reg = 0x0001000000010000UL;

 return (vioapic);
}
