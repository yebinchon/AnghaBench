
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pkcs11_provider {TYPE_1__* slotinfo; TYPE_2__* function_list; } ;
struct TYPE_4__ {char* (* C_FindObjectsInit ) (int ,int *,size_t) ;char* (* C_FindObjects ) (int ,int *,int,size_t*) ;char* (* C_FindObjectsFinal ) (int ) ;} ;
struct TYPE_3__ {int session; } ;
typedef size_t CK_ULONG ;
typedef int CK_SESSION_HANDLE ;
typedef char* CK_RV ;
typedef int CK_OBJECT_HANDLE ;
typedef TYPE_2__ CK_FUNCTION_LIST ;
typedef int CK_ATTRIBUTE ;


 char* CKR_OK ;
 int debug (char*,size_t,size_t,char*) ;
 int error (char*,...) ;
 char* stub1 (int ,int *,size_t) ;
 char* stub2 (int ,int *,int,size_t*) ;
 char* stub3 (int ) ;

__attribute__((used)) static int
pkcs11_find(struct pkcs11_provider *p, CK_ULONG slotidx, CK_ATTRIBUTE *attr,
    CK_ULONG nattr, CK_OBJECT_HANDLE *obj)
{
 CK_FUNCTION_LIST *f;
 CK_SESSION_HANDLE session;
 CK_ULONG nfound = 0;
 CK_RV rv;
 int ret = -1;

 f = p->function_list;
 session = p->slotinfo[slotidx].session;
 if ((rv = f->C_FindObjectsInit(session, attr, nattr)) != CKR_OK) {
  error("C_FindObjectsInit failed (nattr %lu): %lu", nattr, rv);
  return (-1);
 }
 if ((rv = f->C_FindObjects(session, obj, 1, &nfound)) != CKR_OK ||
     nfound != 1) {
  debug("C_FindObjects failed (nfound %lu nattr %lu): %lu",
      nfound, nattr, rv);
 } else
  ret = 0;
 if ((rv = f->C_FindObjectsFinal(session)) != CKR_OK)
  error("C_FindObjectsFinal failed: %lu", rv);
 return (ret);
}
