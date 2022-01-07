
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pStack; } ;
typedef TYPE_1__ FICL_VM ;


 int ficlFree (char*) ;
 scalar_t__ ficlMalloc (int) ;
 char* getenv (char*) ;
 int stackPopINT (int ) ;
 scalar_t__ stackPopPtr (int ) ;
 int stackPushINT (int ,int) ;
 int stackPushPtr (int ,char*) ;
 int strlen (char*) ;
 int strncpy (char*,char*,int) ;
 int vmCheckStack (TYPE_1__*,int,int) ;
 int vmThrowErr (TYPE_1__*,char*) ;

void
ficlGetenv(FICL_VM *pVM)
{

 char *name, *value;

 char *namep;
 int names;




 names = stackPopINT(pVM->pStack);
 namep = (char*) stackPopPtr(pVM->pStack);


 name = (char*) ficlMalloc(names+1);
 if (!name)
  vmThrowErr(pVM, "Error: out of memory");
 strncpy(name, namep, names);
 name[names] = '\0';

 value = getenv(name);
 ficlFree(name);

 if(value != ((void*)0)) {
  stackPushPtr(pVM->pStack, value);
  stackPushINT(pVM->pStack, strlen(value));
 } else

  stackPushINT(pVM->pStack, -1);

 return;
}
