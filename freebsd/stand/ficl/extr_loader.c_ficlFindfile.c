
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct preloaded_file {int dummy; } ;
struct TYPE_5__ {int pStack; } ;
typedef TYPE_1__ FICL_VM ;


 scalar_t__ ficlMalloc (int) ;
 struct preloaded_file* file_findfile (char*,char*) ;
 int stackPopINT (int ) ;
 scalar_t__ stackPopPtr (int ) ;
 int stackPushPtr (int ,struct preloaded_file*) ;
 int strncpy (char*,char*,int) ;
 int vmCheckStack (TYPE_1__*,int,int) ;
 int vmThrowErr (TYPE_1__*,char*) ;

void
ficlFindfile(FICL_VM *pVM)
{

 char *name, *type;

 char *namep, *typep;
 struct preloaded_file* fp;
 int names, types;





 types = stackPopINT(pVM->pStack);
 typep = (char*) stackPopPtr(pVM->pStack);
 names = stackPopINT(pVM->pStack);
 namep = (char*) stackPopPtr(pVM->pStack);

 name = (char*) ficlMalloc(names+1);
 if (!name)
  vmThrowErr(pVM, "Error: out of memory");
 strncpy(name, namep, names);
 name[names] = '\0';
 type = (char*) ficlMalloc(types+1);
 if (!type)
  vmThrowErr(pVM, "Error: out of memory");
 strncpy(type, typep, types);
 type[types] = '\0';

 fp = file_findfile(name, type);



 stackPushPtr(pVM->pStack, fp);

 return;
}
