
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ddi_soft_state {int ss_lock; } ;


 int ddi_soft_state_free_locked (struct ddi_soft_state*,int) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

void
ddi_soft_state_free(void *state, int item)
{
 struct ddi_soft_state *ss = state;

 mutex_enter(&ss->ss_lock);
 ddi_soft_state_free_locked(ss, item);
 mutex_exit(&ss->ss_lock);
}
