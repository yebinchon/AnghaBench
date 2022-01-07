
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct au_class_ent {int ac_name; } ;


 struct au_class_ent* getauclassent_r_locked (struct au_class_ent*) ;
 int mutex ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int setauclass_locked () ;
 scalar_t__ strcmp (char const*,int ) ;

struct au_class_ent *
getauclassnam_r(struct au_class_ent *c, const char *name)
{
 struct au_class_ent *cp;

 if (name == ((void*)0))
  return (((void*)0));




 setauclass_locked();
 while ((cp = getauclassent_r_locked(c)) != ((void*)0)) {
  if (strcmp(name, cp->ac_name) == 0) {



   return (cp);
  }
 }



 return (((void*)0));
}
