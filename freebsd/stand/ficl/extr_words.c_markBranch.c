
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* here; } ;
typedef int FICL_VM ;
typedef TYPE_1__ FICL_DICT ;


 int PUSHPTR (char*) ;

__attribute__((used)) static void markBranch(FICL_DICT *dp, FICL_VM *pVM, char *tag)
{
    PUSHPTR(dp->here);
    PUSHPTR(tag);
    return;
}
