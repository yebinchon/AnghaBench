
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct au_event_ent {int dummy; } ;
typedef int au_event_t ;


 struct au_event_ent* getauevnum_r_locked (struct au_event_ent*,int ) ;
 int mutex ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

struct au_event_ent *
getauevnum_r(struct au_event_ent *e, au_event_t event_number)
{
 struct au_event_ent *ep;




 ep = getauevnum_r_locked(e, event_number);



 return (ep);
}
