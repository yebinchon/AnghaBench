
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct au_user_ent {int au_name; } ;


 struct au_user_ent* getauuserent_r_locked (struct au_user_ent*) ;
 int mutex ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int setauuser_locked () ;
 scalar_t__ strcmp (char const*,int ) ;

struct au_user_ent *
getauusernam_r(struct au_user_ent *u, const char *name)
{
 struct au_user_ent *up;

 if (name == ((void*)0))
  return (((void*)0));





 setauuser_locked();
 while ((up = getauuserent_r_locked(u)) != ((void*)0)) {
  if (strcmp(name, u->au_name) == 0) {



   return (up);
  }
 }




 return (((void*)0));

}
