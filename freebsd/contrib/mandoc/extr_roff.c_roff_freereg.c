
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct roffreg* p; } ;
struct roffreg {struct roffreg* next; TYPE_1__ key; } ;


 int free (struct roffreg*) ;

__attribute__((used)) static void
roff_freereg(struct roffreg *reg)
{
 struct roffreg *old_reg;

 while (((void*)0) != reg) {
  free(reg->key.p);
  old_reg = reg;
  reg = reg->next;
  free(old_reg);
 }
}
