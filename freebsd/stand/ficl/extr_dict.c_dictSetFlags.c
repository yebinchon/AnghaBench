
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int UNS8 ;
struct TYPE_5__ {int flags; } ;
struct TYPE_4__ {TYPE_3__* smudge; } ;
typedef TYPE_1__ FICL_DICT ;


 int assert (TYPE_3__*) ;

void dictSetFlags(FICL_DICT *pDict, UNS8 set, UNS8 clr)
{
    assert(pDict->smudge);
    pDict->smudge->flags |= set;
    pDict->smudge->flags &= ~clr;
    return;
}
