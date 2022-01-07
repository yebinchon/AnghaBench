
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int c_flag; char* c_name; int c_done_cv; scalar_t__ c_arg; int (* c_func ) (scalar_t__,int) ;struct TYPE_3__* c_next; } ;
typedef TYPE_1__ callb_t ;
struct TYPE_4__ {int ct_lock; TYPE_1__** ct_first_cb; } ;


 int ASSERT (int) ;
 int CALLB_EXECUTING ;
 int CALLB_FREE ;
 int NCBCLASS ;
 TYPE_2__* ct ;
 int cv_broadcast (int *) ;
 int cv_wait (int *,int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int printf (char*,char*,void*,void*) ;
 int stub1 (scalar_t__,int) ;

void *
callb_execute_class(int class, int code)
{
 callb_t *cp;
 void *ret = ((void*)0);

 ASSERT(class < NCBCLASS);

 mutex_enter(&ct->ct_lock);

 for (cp = ct->ct_first_cb[class];
     cp != ((void*)0) && ret == 0; cp = cp->c_next) {
  while (cp->c_flag & CALLB_EXECUTING)
   cv_wait(&cp->c_done_cv, &ct->ct_lock);



  if (cp->c_flag == CALLB_FREE)
   continue;
  cp->c_flag |= CALLB_EXECUTING;






  mutex_exit(&ct->ct_lock);

  if (!(*cp->c_func)(cp->c_arg, code))
   ret = cp->c_name;
  mutex_enter(&ct->ct_lock);

  cp->c_flag &= ~CALLB_EXECUTING;
  cv_broadcast(&cp->c_done_cv);
 }
 mutex_exit(&ct->ct_lock);
 return (ret);
}
