
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* l_prev; struct TYPE_3__* l_next; } ;
typedef TYPE_1__ ctf_list_t ;



__attribute__((used)) static void
ctf_list_prepend(ctf_list_t *lp, void *new)
{
 ctf_list_t *p = new;
 ctf_list_t *q = lp->l_next;

 lp->l_next = p;
 p->l_prev = ((void*)0);
 p->l_next = q;

 if (q != ((void*)0))
  q->l_prev = p;
 else
  lp->l_prev = p;
}
