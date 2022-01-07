
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ getstrfromtype_locked (char const*,char**) ;
 int mutex ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int setac_locked () ;
 int strlcpy (char*,char*,int) ;
 size_t strlen (char*) ;

__attribute__((used)) static int
getaccommon(const char *name, char *auditstr, int len)
{
 char *str;




 setac_locked();
 if (getstrfromtype_locked(name, &str) < 0) {



  return (-2);
 }





 if (str != ((void*)0) && (strlen(str) >= (size_t)len)) {



  return (-3);
 }
 strlcpy(auditstr, str != ((void*)0) ? str : "", len);



 return (0);
}
