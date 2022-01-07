
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {struct list_head* prev; struct list_head* next; } ;
struct work_list {int cond; int lock; struct list_head list; } ;


 int __list_empty (struct work_list*) ;
 int pthread_cond_signal (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static inline void list_add_tail(struct work_list *work_list, struct list_head *req)
{
 int empty;
 pthread_mutex_lock(&work_list->lock);
 empty = __list_empty(work_list);
 req->prev = work_list->list.prev;
 req->next = &work_list->list;
 req->prev->next = work_list->list.prev = req;
 pthread_mutex_unlock(&work_list->lock);
 if (empty)
  pthread_cond_signal(&work_list->cond);
}
