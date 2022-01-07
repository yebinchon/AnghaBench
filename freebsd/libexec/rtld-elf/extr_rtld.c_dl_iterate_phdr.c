
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dl_phdr_info {int dummy; } ;
typedef int phdr_info ;
typedef int (* __dl_iterate_hdr_callback ) (struct dl_phdr_info*,int,void*) ;
typedef int RtldLockState ;
typedef int Obj_Entry ;


 int TAILQ_FIRST (int *) ;
 int TAILQ_INSERT_AFTER (int *,int *,int *,int ) ;
 int TAILQ_REMOVE (int *,int *,int ) ;
 int * globallist_curr (int ) ;
 int * globallist_next (int *) ;
 int hold_object (int *) ;
 int init_marker (int *) ;
 int lock_release (int ,int *) ;
 int next ;
 int obj_list ;
 int obj_rtld ;
 int rtld_bind_lock ;
 int rtld_fill_dl_phdr_info (int *,struct dl_phdr_info*) ;
 int rtld_phdr_lock ;
 int unhold_object (int *) ;
 int wlock_acquire (int ,int *) ;

int
dl_iterate_phdr(__dl_iterate_hdr_callback callback, void *param)
{
 struct dl_phdr_info phdr_info;
 Obj_Entry *obj, marker;
 RtldLockState bind_lockstate, phdr_lockstate;
 int error;

 init_marker(&marker);
 error = 0;

 wlock_acquire(rtld_phdr_lock, &phdr_lockstate);
 wlock_acquire(rtld_bind_lock, &bind_lockstate);
 for (obj = globallist_curr(TAILQ_FIRST(&obj_list)); obj != ((void*)0);) {
  TAILQ_INSERT_AFTER(&obj_list, obj, &marker, next);
  rtld_fill_dl_phdr_info(obj, &phdr_info);
  hold_object(obj);
  lock_release(rtld_bind_lock, &bind_lockstate);

  error = callback(&phdr_info, sizeof phdr_info, param);

  wlock_acquire(rtld_bind_lock, &bind_lockstate);
  unhold_object(obj);
  obj = globallist_next(&marker);
  TAILQ_REMOVE(&obj_list, &marker, next);
  if (error != 0) {
   lock_release(rtld_bind_lock, &bind_lockstate);
   lock_release(rtld_phdr_lock, &phdr_lockstate);
   return (error);
  }
 }

 if (error == 0) {
  rtld_fill_dl_phdr_info(&obj_rtld, &phdr_info);
  lock_release(rtld_bind_lock, &bind_lockstate);
  error = callback(&phdr_info, sizeof(phdr_info), param);
 }
 lock_release(rtld_phdr_lock, &phdr_lockstate);
 return (error);
}
