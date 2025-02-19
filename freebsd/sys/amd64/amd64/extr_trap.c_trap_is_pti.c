
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct trapframe {int tf_err; } ;
struct TYPE_4__ {scalar_t__ pm_ucr3; int pm_cr3; } ;
struct TYPE_3__ {int pcb_saved_ucr3; } ;


 int CR3_PCID_MASK ;
 TYPE_2__* PCPU_GET (int ) ;
 int PGEX_I ;
 int PGEX_P ;
 int PGEX_U ;
 int PGEX_W ;
 scalar_t__ PMAP_NO_CR3 ;
 TYPE_1__* curpcb ;
 int curpmap ;
 scalar_t__ pg_nx ;

__attribute__((used)) static bool
trap_is_pti(struct trapframe *frame)
{

 return (PCPU_GET(curpmap)->pm_ucr3 != PMAP_NO_CR3 &&
     pg_nx != 0 && (frame->tf_err & (PGEX_P | PGEX_W |
     PGEX_U | PGEX_I)) == (PGEX_P | PGEX_U | PGEX_I) &&
     (curpcb->pcb_saved_ucr3 & ~CR3_PCID_MASK) ==
     (PCPU_GET(curpmap)->pm_cr3 & ~CR3_PCID_MASK));
}
