
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t c_class; int c_flag; struct TYPE_3__* c_next; int c_done_cv; } ;
typedef TYPE_1__ callb_t ;
typedef scalar_t__ callb_id_t ;
struct TYPE_4__ {int ct_lock; TYPE_1__* ct_freelist; TYPE_1__** ct_first_cb; } ;


 int CALLB_EXECUTING ;
 int CALLB_FREE ;
 int CE_WARN ;
 int cmn_err (int ,char*,void*) ;
 TYPE_2__* ct ;
 int cv_wait (int *,int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

int
callb_delete(callb_id_t id)
{
 callb_t **pp;
 callb_t *me = (callb_t *)id;

 mutex_enter(&ct->ct_lock);

 for (;;) {
  pp = &ct->ct_first_cb[me->c_class];
  while (*pp != ((void*)0) && *pp != me)
   pp = &(*pp)->c_next;
  if (!(me->c_flag & CALLB_EXECUTING))
   break;

  cv_wait(&me->c_done_cv, &ct->ct_lock);
 }

 *pp = me->c_next;


 me->c_flag = CALLB_FREE;
 me->c_next = ct->ct_freelist;
 ct->ct_freelist = me;

 mutex_exit(&ct->ct_lock);
 return (0);
}
