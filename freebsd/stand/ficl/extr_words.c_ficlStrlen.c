
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pStack; } ;
typedef TYPE_1__ FICL_VM ;


 scalar_t__ stackPopPtr (int ) ;
 int stackPushINT (int ,int ) ;
 int strlen (char*) ;

__attribute__((used)) static void ficlStrlen(FICL_VM *ficlVM)
 {
 char *address = (char *)stackPopPtr(ficlVM->pStack);
 stackPushINT(ficlVM->pStack, strlen(address));
 }
