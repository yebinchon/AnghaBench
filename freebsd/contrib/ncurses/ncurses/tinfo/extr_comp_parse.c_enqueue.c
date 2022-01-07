
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* next; struct TYPE_6__* last; } ;
typedef TYPE_1__ ENTRY ;


 int MSG_NO_MEMORY ;
 TYPE_1__* _nc_copy_entry (TYPE_1__*) ;
 int _nc_err_abort (int ) ;
 TYPE_1__* _nc_tail ;

__attribute__((used)) static void
enqueue(ENTRY * ep)

{
    ENTRY *newp = _nc_copy_entry(ep);

    if (newp == 0)
 _nc_err_abort(MSG_NO_MEMORY);

    newp->last = _nc_tail;
    _nc_tail = newp;

    newp->next = 0;
    if (newp->last)
 newp->last->next = newp;
}
