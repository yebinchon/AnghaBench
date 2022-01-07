
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pkcs11_provider {size_t nslots; int handle; TYPE_2__* function_list; scalar_t__ valid; TYPE_1__* slotinfo; int refcount; } ;
struct TYPE_4__ {int (* C_Finalize ) (int *) ;int (* C_CloseSession ) (scalar_t__) ;} ;
struct TYPE_3__ {scalar_t__ session; } ;
typedef size_t CK_ULONG ;
typedef int CK_RV ;


 int CKR_OK ;
 int debug (char*,struct pkcs11_provider*,int ,scalar_t__) ;
 int dlclose (int ) ;
 int error (char*,int ) ;
 int stub1 (scalar_t__) ;
 int stub2 (int *) ;

__attribute__((used)) static void
pkcs11_provider_finalize(struct pkcs11_provider *p)
{
 CK_RV rv;
 CK_ULONG i;

 debug("pkcs11_provider_finalize: %p refcount %d valid %d",
     p, p->refcount, p->valid);
 if (!p->valid)
  return;
 for (i = 0; i < p->nslots; i++) {
  if (p->slotinfo[i].session &&
      (rv = p->function_list->C_CloseSession(
      p->slotinfo[i].session)) != CKR_OK)
   error("C_CloseSession failed: %lu", rv);
 }
 if ((rv = p->function_list->C_Finalize(((void*)0))) != CKR_OK)
  error("C_Finalize failed: %lu", rv);
 p->valid = 0;
 p->function_list = ((void*)0);
 dlclose(p->handle);
}
