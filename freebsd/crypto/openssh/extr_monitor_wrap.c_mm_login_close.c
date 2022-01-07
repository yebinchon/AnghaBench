
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* lc_cap; struct TYPE_4__* lc_class; struct TYPE_4__* lc_style; } ;
typedef TYPE_1__ login_cap_t ;


 int free (TYPE_1__*) ;

void
mm_login_close(login_cap_t *lc)
{
 if (lc == ((void*)0))
  return;
 free(lc->lc_style);
 free(lc->lc_class);
 free(lc->lc_cap);
 free(lc);
}
