
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int count; int text; } ;
typedef int FICL_VM ;
typedef TYPE_1__ FICL_STRING ;


 TYPE_1__* POPPTR () ;
 int PUSHPTR (int ) ;
 int PUSHUNS (int ) ;
 int vmCheckStack (int *,int,int) ;

__attribute__((used)) static void count(FICL_VM *pVM)
{
    FICL_STRING *sp;




    sp = POPPTR();
    PUSHPTR(sp->text);
    PUSHUNS(sp->count);
    return;
}
