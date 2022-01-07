
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pStack; } ;
typedef TYPE_1__ FICL_VM ;


 int O_ACCMODE ;
 int O_RDONLY ;
 int O_WRONLY ;
 int VE_GUESS ;
 int bcopy (char*,char*,int) ;
 int close (int) ;
 int free (char*) ;
 scalar_t__ malloc (int) ;
 int open (char*,int) ;
 int stackPopINT (int ) ;
 char* stackPopPtr (int ) ;
 int stackPushINT (int ,int) ;
 scalar_t__ verify_file (int,char*,int ,int ) ;
 int vmCheckStack (TYPE_1__*,int,int) ;

__attribute__((used)) static void pfopen(FICL_VM *pVM)
{
    int mode, fd, count;
    char *ptr, *name;





    mode = stackPopINT(pVM->pStack);
    count = stackPopINT(pVM->pStack);
    ptr = stackPopPtr(pVM->pStack);

    if ((count < 0) || (ptr == ((void*)0))) {
        stackPushINT(pVM->pStack, -1);
        return;
    }


    name = (char *)malloc(count+1);
    bcopy(ptr,name,count);
    name[count] = 0;


    fd = open(name, mode);
    free(name);
    stackPushINT(pVM->pStack, fd);
    return;
}
