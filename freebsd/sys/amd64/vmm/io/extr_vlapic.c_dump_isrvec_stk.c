
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct vlapic {int isrvec_stk_top; int* isrvec_stk; TYPE_1__* apic_page; } ;
struct TYPE_2__ {int isr0; } ;


 int printf (char*,int,int) ;

__attribute__((used)) static void
dump_isrvec_stk(struct vlapic *vlapic)
{
 int i;
 uint32_t *isrptr;

 isrptr = &vlapic->apic_page->isr0;
 for (i = 0; i < 8; i++)
  printf("ISR%d 0x%08x\n", i, isrptr[i * 4]);

 for (i = 0; i <= vlapic->isrvec_stk_top; i++)
  printf("isrvec_stk[%d] = %d\n", i, vlapic->isrvec_stk[i]);
}
