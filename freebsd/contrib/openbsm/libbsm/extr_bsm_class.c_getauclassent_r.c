
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct au_class_ent {int dummy; } ;


 struct au_class_ent* getauclassent_r_locked (struct au_class_ent*) ;
 int mutex ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

struct au_class_ent *
getauclassent_r(struct au_class_ent *c)
{
 struct au_class_ent *cp;




 cp = getauclassent_r_locked(c);



 return (cp);
}
