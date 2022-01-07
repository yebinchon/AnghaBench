
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* p; } ;
struct TYPE_3__ {char* name; } ;
typedef int FICL_VM ;
typedef TYPE_1__ FICL_HASH ;


 TYPE_2__ vmPop (int *) ;

__attribute__((used)) static void widSetName(FICL_VM *pVM)
{
    char *cp = (char *)vmPop(pVM).p;
    FICL_HASH *pHash = vmPop(pVM).p;
    pHash->name = cp;
    return;
}
