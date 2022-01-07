
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct au_user_ent {int dummy; } ;


 struct au_user_ent* getauuserent_r_locked (struct au_user_ent*) ;
 int mutex ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

struct au_user_ent *
getauuserent_r(struct au_user_ent *u)
{
 struct au_user_ent *up;




 up = getauuserent_r_locked(u);



 return (up);
}
