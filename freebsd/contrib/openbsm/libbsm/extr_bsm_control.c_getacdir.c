
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DIR_CONTROL_ENTRY ;
 int SEEK_SET ;
 int * fp ;
 int fseek (int *,int ,int ) ;
 scalar_t__ getstrfromtype_locked (int ,char**) ;
 scalar_t__ inacdir ;
 int mutex ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 scalar_t__ ptrmoved ;
 int strlcpy (char*,char*,int) ;
 size_t strlen (char*) ;

int
getacdir(char *name, int len)
{
 char *dir;
 int ret = 0;
 if (inacdir && ptrmoved) {
  ptrmoved = 0;
  if (fp != ((void*)0))
   fseek(fp, 0, SEEK_SET);
  ret = 2;
 }
 if (getstrfromtype_locked(DIR_CONTROL_ENTRY, &dir) < 0) {



  return (-2);
 }
 if (dir == ((void*)0)) {



  return (-1);
 }
 if (strlen(dir) >= (size_t)len) {



  return (-3);
 }
 strlcpy(name, dir, len);



 return (ret);
}
