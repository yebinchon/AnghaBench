
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ddi_soft_state_item {int ssi_item; struct ddi_soft_state_item* ssi_data; } ;
struct ddi_soft_state {int ss_size; int ss_lock; int ss_list; } ;


 int DDI_FAILURE ;
 int DDI_SUCCESS ;
 int KM_SLEEP ;
 int LIST_INSERT_HEAD (int *,struct ddi_soft_state_item*,int ) ;
 int * ddi_get_soft_state_locked (struct ddi_soft_state*,int) ;
 struct ddi_soft_state_item* kmem_alloc (int,int ) ;
 int kmem_free (struct ddi_soft_state_item*,int) ;
 struct ddi_soft_state_item* kmem_zalloc (int,int ) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int ssi_next ;

int
ddi_soft_state_zalloc(void *state, int item)
{
 struct ddi_soft_state *ss = state;
 struct ddi_soft_state_item *itemp;

 itemp = kmem_alloc(sizeof(*itemp), KM_SLEEP);
 itemp->ssi_item = item;
 itemp->ssi_data = kmem_zalloc(ss->ss_size, KM_SLEEP);

 mutex_enter(&ss->ss_lock);
 if (ddi_get_soft_state_locked(ss, item) != ((void*)0)) {
  mutex_exit(&ss->ss_lock);
  kmem_free(itemp->ssi_data, ss->ss_size);
  kmem_free(itemp, sizeof(*itemp));
  return (DDI_FAILURE);
 }
 LIST_INSERT_HEAD(&ss->ss_list, itemp, ssi_next);
 mutex_exit(&ss->ss_lock);
 return (DDI_SUCCESS);
}
