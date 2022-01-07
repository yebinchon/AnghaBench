
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* lc_cap; struct TYPE_6__* lc_class; struct TYPE_6__* lc_style; } ;
typedef TYPE_1__ login_cap_t ;


 int cgetclose () ;
 int free (TYPE_1__*) ;
 TYPE_1__* internal_array ;
 scalar_t__ internal_arraysz ;
 TYPE_1__* internal_string ;
 scalar_t__ internal_stringsz ;
 scalar_t__ lc_object_count ;

void
login_close(login_cap_t * lc)
{
    if (lc) {
 free(lc->lc_style);
 free(lc->lc_class);
 free(lc->lc_cap);
 free(lc);
 if (--lc_object_count == 0) {
     free(internal_string);
     free(internal_array);
     internal_array = ((void*)0);
     internal_arraysz = 0;
     internal_string = ((void*)0);
     internal_stringsz = 0;
     cgetclose();
 }
    }
}
