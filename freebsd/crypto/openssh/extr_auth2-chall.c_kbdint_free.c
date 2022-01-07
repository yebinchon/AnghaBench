
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* devices; scalar_t__ device; } ;
typedef TYPE_1__ KbdintAuthctxt ;


 int explicit_bzero (TYPE_1__*,int) ;
 int free (TYPE_1__*) ;
 int kbdint_reset_device (TYPE_1__*) ;

__attribute__((used)) static void
kbdint_free(KbdintAuthctxt *kbdintctxt)
{
 if (kbdintctxt->device)
  kbdint_reset_device(kbdintctxt);
 free(kbdintctxt->devices);
 explicit_bzero(kbdintctxt, sizeof(*kbdintctxt));
 free(kbdintctxt);
}
