
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DIST_CONTROL_ENTRY ;
 scalar_t__ getstrfromtype_locked (int ,char**) ;
 int mutex ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int setac_locked () ;
 scalar_t__ strcasecmp (char*,char*) ;

int
getacdist(void)
{
 char *str;
 int ret;




 setac_locked();
 if (getstrfromtype_locked(DIST_CONTROL_ENTRY, &str) < 0) {



  return (-2);
 }
 if (str == ((void*)0)) {



  return (0);
 }
 if (strcasecmp(str, "on") == 0 || strcasecmp(str, "yes") == 0)
  ret = 1;
 else
  ret = 0;



 return (ret);
}
