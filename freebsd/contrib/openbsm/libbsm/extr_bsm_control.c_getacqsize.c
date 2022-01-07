
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AQ_MAXHIGH ;
 int EINVAL ;
 int QSZ_CONTROL_ENTRY ;
 int USE_DEFAULT_QSZ ;
 int errno ;
 scalar_t__ getstrfromtype_locked (int ,char**) ;
 int mutex ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int setac_locked () ;
 int sscanf (char*,char*,int*) ;

int
getacqsize(int *qsz_val)
{
 char *str;
 int nparsed;




 setac_locked();
 if (getstrfromtype_locked(QSZ_CONTROL_ENTRY, &str) < 0) {



  return (-2);
 }
 if (str == ((void*)0)) {



  *qsz_val = USE_DEFAULT_QSZ;
  return (0);
 }


 while (*str == ' ' || *str == '\t')
  str++;

 nparsed = sscanf(str, "%d", (int *)qsz_val);

 if (nparsed != 1) {
  errno = EINVAL;



  return (-1);
 }


 if (*qsz_val < 0 || *qsz_val > AQ_MAXHIGH) {



  qsz_val = 0L;
  errno = EINVAL;
  return (-1);
 }



 return (0);
}
