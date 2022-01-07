
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct au_event_ent {int dummy; } ;


 struct au_event_ent* getauevent_r_locked (struct au_event_ent*) ;
 int mutex ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

struct au_event_ent *
getauevent_r(struct au_event_ent *e)
{
 struct au_event_ent *ep;




 ep = getauevent_r_locked(e);



 return (ep);
}
