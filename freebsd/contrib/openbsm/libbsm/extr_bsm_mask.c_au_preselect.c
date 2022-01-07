
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct au_event_ent {int ae_class; } ;
struct TYPE_3__ {int am_success; int am_failure; } ;
typedef TYPE_1__ au_mask_t ;
typedef int au_event_t ;
typedef int au_class_t ;


 int AU_PRS_FAILURE ;

 int AU_PRS_SUCCESS ;

 scalar_t__ firsttime ;
 int flush_cache () ;
 int load_event_table () ;
 int mutex ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 struct au_event_ent* read_from_cache (int ) ;

int
au_preselect(au_event_t event, au_mask_t *mask_p, int sorf, int flag)
{
 struct au_event_ent *ev;
 au_class_t effmask = 0;

 if (mask_p == ((void*)0))
  return (-1);





 if (firsttime) {
  firsttime = 0;
  if ( -1 == load_event_table()) {



   return (-1);
  }
 }
 switch (flag) {
 case 129:
  flush_cache();
  if (load_event_table() == -1) {



   return (-1);
  }
  ev = read_from_cache(event);
  break;
 case 128:
  ev = read_from_cache(event);
  break;
 default:
  ev = ((void*)0);
 }
 if (ev == ((void*)0)) {



  return (-1);
 }
 if (sorf & AU_PRS_SUCCESS)
  effmask |= (mask_p->am_success & ev->ae_class);
 if (sorf & AU_PRS_FAILURE)
  effmask |= (mask_p->am_failure & ev->ae_class);



 if (effmask != 0)
  return (1);
 return (0);
}
