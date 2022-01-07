
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef long time_t ;


 int AU_LINE_MAX ;
 int EXPIRE_AFTER_CONTROL_ENTRY ;
 scalar_t__ getstrfromtype_locked (int ,char**) ;
 int mutex ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int setac_locked () ;
 int setexpirecond (long*,size_t*,int ,char) ;
 int sscanf (char*,char*,int *,char*,char*,int *,char*) ;
 int * strcasestr (char*,char*) ;

int
getacexpire(int *andflg, time_t *age, size_t *size)
{
 char *str;
 int nparsed;
 u_long val1, val2;
 char mult1, mult2;
 char andor[AU_LINE_MAX];

 *age = 0L;
 *size = 0LL;
 *andflg = 0;




 setac_locked();
 if (getstrfromtype_locked(EXPIRE_AFTER_CONTROL_ENTRY, &str) < 0) {



  return (-2);
 }
 if (str == ((void*)0)) {



  return (-1);
 }


 while (*str == ' ' || *str == '\t')
  str++;

 nparsed = sscanf(str, "%lu%c%[ \tadnorADNOR]%lu%c", &val1, &mult1,
     andor, &val2, &mult2);

 switch (nparsed) {
 case 1:

  mult1 = 'B';

 case 2:

  if (setexpirecond(age, size, val1, mult1) != 0) {



   return (-1);
  }
  break;

 case 5:

  if (setexpirecond(age, size, val1, mult1) != 0 ||
      setexpirecond(age, size, val2, mult2) != 0) {



   return (-1);
  }
  if (strcasestr(andor, "and") != ((void*)0))
   *andflg = 1;
  else if (strcasestr(andor, "or") != ((void*)0))
   *andflg = 0;
  else {



   return (-1);
  }
  break;

 default:



  return (-1);
 }




 return (0);
}
