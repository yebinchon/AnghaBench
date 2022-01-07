
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pStack; } ;
typedef TYPE_1__ FICL_VM ;


 int ficlFree (char*) ;
 scalar_t__ ficlMalloc (int) ;
 int setenv (char*,char*,int) ;
 int stackPopINT (int ) ;
 scalar_t__ stackPopPtr (int ) ;
 int strncpy (char*,char*,int) ;
 int vmCheckStack (TYPE_1__*,int,int ) ;
 int vmThrowErr (TYPE_1__*,char*) ;

void
ficlSetenvq(FICL_VM *pVM)
{

 char *name, *value;

 char *namep, *valuep;
 int names, values, overwrite;




 overwrite = stackPopINT(pVM->pStack);
 names = stackPopINT(pVM->pStack);
 namep = (char*) stackPopPtr(pVM->pStack);
 values = stackPopINT(pVM->pStack);
 valuep = (char*) stackPopPtr(pVM->pStack);


 name = (char*) ficlMalloc(names+1);
 if (!name)
  vmThrowErr(pVM, "Error: out of memory");
 strncpy(name, namep, names);
 name[names] = '\0';
 value = (char*) ficlMalloc(values+1);
 if (!value)
  vmThrowErr(pVM, "Error: out of memory");
 strncpy(value, valuep, values);
 value[values] = '\0';

 setenv(name, value, overwrite);
 ficlFree(name);
 ficlFree(value);


 return;
}
