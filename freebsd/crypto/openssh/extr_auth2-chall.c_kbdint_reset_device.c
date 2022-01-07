
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* device; int * ctxt; } ;
struct TYPE_4__ {int (* free_ctx ) (int *) ;} ;
typedef TYPE_2__ KbdintAuthctxt ;


 int stub1 (int *) ;

__attribute__((used)) static void
kbdint_reset_device(KbdintAuthctxt *kbdintctxt)
{
 if (kbdintctxt->ctxt) {
  kbdintctxt->device->free_ctx(kbdintctxt->ctxt);
  kbdintctxt->ctxt = ((void*)0);
 }
 kbdintctxt->device = ((void*)0);
}
