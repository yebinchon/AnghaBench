
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ddi_soft_state_item {int ssi_item; } ;
struct ddi_soft_state {int ss_lock; int ss_list; } ;


 struct ddi_soft_state_item* LIST_FIRST (int *) ;
 int ddi_soft_state_free_locked (struct ddi_soft_state*,int) ;
 int kmem_free (struct ddi_soft_state*,int) ;
 int mutex_destroy (int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

void
ddi_soft_state_fini(void **statep)
{
 struct ddi_soft_state *ss = *statep;
 struct ddi_soft_state_item *itemp;
 int item;

 mutex_enter(&ss->ss_lock);
 while ((itemp = LIST_FIRST(&ss->ss_list)) != ((void*)0)) {
  item = itemp->ssi_item;
  ddi_soft_state_free_locked(ss, item);
 }
 mutex_exit(&ss->ss_lock);
 mutex_destroy(&ss->ss_lock);
 kmem_free(ss, sizeof(*ss));

 *statep = ((void*)0);
}
