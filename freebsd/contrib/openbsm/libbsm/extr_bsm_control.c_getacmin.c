
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MINFREE_CONTROL_ENTRY ;
 int atoi (char*) ;
 scalar_t__ getstrfromtype_locked (int ,char**) ;
 int mutex ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int setac_locked () ;

int
getacmin(int *min_val)
{
 char *min;




 setac_locked();
 if (getstrfromtype_locked(MINFREE_CONTROL_ENTRY, &min) < 0) {



  return (-2);
 }
 if (min == ((void*)0)) {



  return (-1);
 }
 *min_val = atoi(min);



 return (0);
}
