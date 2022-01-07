
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* p; } ;
struct TYPE_3__ {char* name; } ;
typedef int FICL_VM ;
typedef char* FICL_INT ;
typedef TYPE_1__ FICL_HASH ;


 int LVALUEtoCELL (char*) ;
 char* strlen (char*) ;
 TYPE_2__ vmPop (int *) ;
 int vmPush (int *,int ) ;

__attribute__((used)) static void widGetName(FICL_VM *pVM)
{
    FICL_HASH *pHash = vmPop(pVM).p;
    char *cp = pHash->name;
    FICL_INT len = 0;

    if (cp)
        len = strlen(cp);

    vmPush(pVM, LVALUEtoCELL(cp));
    vmPush(pVM, LVALUEtoCELL(len));
    return;
}
