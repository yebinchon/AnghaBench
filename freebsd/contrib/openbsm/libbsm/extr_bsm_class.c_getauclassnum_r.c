
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct au_class_ent {scalar_t__ ac_class; } ;
typedef scalar_t__ au_class_t ;


 struct au_class_ent* getauclassent_r_locked (struct au_class_ent*) ;
 int mutex ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int setauclass_locked () ;

struct au_class_ent *
getauclassnum_r(struct au_class_ent *c, au_class_t class_number)
{
 struct au_class_ent *cp;




 setauclass_locked();
 while ((cp = getauclassent_r_locked(c)) != ((void*)0)) {
  if (class_number == cp->ac_class)
   return (cp);
 }



 return (((void*)0));
}
