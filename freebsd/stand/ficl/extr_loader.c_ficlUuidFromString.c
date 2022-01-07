
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef char uuid_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_5__ {int pStack; } ;
typedef TYPE_1__ FICL_VM ;


 int ficlFree (char*) ;
 scalar_t__ ficlMalloc (int) ;
 int stackPopINT (int ) ;
 scalar_t__ stackPopPtr (int ) ;
 int stackPushPtr (int ,char*) ;
 int strncpy (char*,char*,int) ;
 int uuid_from_string (char*,char*,scalar_t__*) ;
 scalar_t__ uuid_s_ok ;
 int vmCheckStack (TYPE_1__*,int,int ) ;
 int vmThrowErr (TYPE_1__*,char*) ;

void
ficlUuidFromString(FICL_VM *pVM)
{

 char *uuid;
 uint32_t status;

 char *uuidp;
 int uuids;
 uuid_t *u;





 uuids = stackPopINT(pVM->pStack);
 uuidp = (char *) stackPopPtr(pVM->pStack);


 uuid = (char *)ficlMalloc(uuids + 1);
 if (!uuid)
  vmThrowErr(pVM, "Error: out of memory");
 strncpy(uuid, uuidp, uuids);
 uuid[uuids] = '\0';

 u = (uuid_t *)ficlMalloc(sizeof (*u));

 uuid_from_string(uuid, u, &status);
 ficlFree(uuid);
 if (status != uuid_s_ok) {
  ficlFree(u);
  u = ((void*)0);
 }



 stackPushPtr(pVM->pStack, u);


 return;
}
