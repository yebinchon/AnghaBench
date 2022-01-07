
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uuid_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_4__ {int pStack; } ;
typedef TYPE_1__ FICL_VM ;


 scalar_t__ stackPopPtr (int ) ;
 int stackPushINT (int ,int) ;
 int stackPushPtr (int ,char*) ;
 int strlen (char*) ;
 scalar_t__ uuid_s_ok ;
 int uuid_to_string (int *,char**,scalar_t__*) ;
 int vmCheckStack (TYPE_1__*,int,int ) ;

void
ficlUuidToString(FICL_VM *pVM)
{

 char *uuid;
 uint32_t status;

 uuid_t *u;





 u = (uuid_t *)stackPopPtr(pVM->pStack);


 uuid_to_string(u, &uuid, &status);
 if (status != uuid_s_ok) {
  stackPushPtr(pVM->pStack, uuid);
  stackPushINT(pVM->pStack, strlen(uuid));
 } else

  stackPushINT(pVM->pStack, -1);

 return;
}
