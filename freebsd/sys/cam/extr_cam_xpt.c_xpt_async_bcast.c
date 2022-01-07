
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int32_t ;
struct mtx {int dummy; } ;
struct cam_path {TYPE_2__* device; } ;
struct async_node {int event_enable; int callback_arg; int (* callback ) (int ,int,struct cam_path*,void*) ;scalar_t__ event_lock; } ;
struct async_list {int dummy; } ;
struct TYPE_4__ {TYPE_1__* sim; } ;
struct TYPE_3__ {struct mtx* mtx; } ;


 struct async_node* SLIST_FIRST (struct async_list*) ;
 struct async_node* SLIST_NEXT (struct async_node*,int ) ;
 int links ;
 int mtx_lock (struct mtx*) ;
 int mtx_unlock (struct mtx*) ;
 int stub1 (int ,int,struct cam_path*,void*) ;

__attribute__((used)) static void
xpt_async_bcast(struct async_list *async_head,
  u_int32_t async_code,
  struct cam_path *path, void *async_arg)
{
 struct async_node *cur_entry;
 struct mtx *mtx;

 cur_entry = SLIST_FIRST(async_head);
 while (cur_entry != ((void*)0)) {
  struct async_node *next_entry;





  next_entry = SLIST_NEXT(cur_entry, links);
  if ((cur_entry->event_enable & async_code) != 0) {
   mtx = cur_entry->event_lock ?
       path->device->sim->mtx : ((void*)0);
   if (mtx)
    mtx_lock(mtx);
   cur_entry->callback(cur_entry->callback_arg,
         async_code, path,
         async_arg);
   if (mtx)
    mtx_unlock(mtx);
  }
  cur_entry = next_entry;
 }
}
