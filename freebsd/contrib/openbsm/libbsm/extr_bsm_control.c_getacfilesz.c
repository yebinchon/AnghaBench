
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;


 int EINVAL ;
 int FILESZ_CONTROL_ENTRY ;
 size_t MIN_AUDIT_FILE_SIZE ;
 int au_spacetobytes (size_t*,size_t,char) ;
 int errno ;
 scalar_t__ getstrfromtype_locked (int ,char**) ;
 int mutex ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int setac_locked () ;
 int sscanf (char*,char*,int *,char*) ;

int
getacfilesz(size_t *filesz_val)
{
 char *str;
 size_t val;
 char mult;
 int nparsed;




 setac_locked();
 if (getstrfromtype_locked(FILESZ_CONTROL_ENTRY, &str) < 0) {



  return (-2);
 }
 if (str == ((void*)0)) {



  errno = EINVAL;
  return (-1);
 }


 while (*str == ' ' || *str == '\t')
  str++;

 nparsed = sscanf(str, "%ju%c", (uintmax_t *)&val, &mult);

 switch (nparsed) {
 case 1:

  mult = 'B';

 case 2:
  if (au_spacetobytes(filesz_val, val, mult) == 0)
   break;

 default:
  errno = EINVAL;



  return (-1);
 }





 if (*filesz_val < 0 || (*filesz_val > 0 &&
  *filesz_val < MIN_AUDIT_FILE_SIZE)) {



  filesz_val = 0L;
  errno = EINVAL;
  return (-1);
 }



 return (0);
}
