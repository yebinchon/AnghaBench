
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;


 int atexit (int *) ;
 char* ctime (int const*) ;
 int ctime_lock ;
 int ctime_r_cleanup ;
 int ctime_r_init ;
 int lock_basic_init (int *) ;
 int lock_basic_lock (int *) ;
 int lock_basic_unlock (int *) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;

char *ctime_r(const time_t *timep, char *buf)
{
 char* result;
 if(!ctime_r_init) {


  ctime_r_init = 1;
  lock_basic_init(&ctime_lock);
  atexit(&ctime_r_cleanup);
 }
 lock_basic_lock(&ctime_lock);
 result = ctime(timep);
 if(buf && result) {
  if(strlen(result) > 10 && result[7]==' ' && result[8]=='0')
   result[8]=' ';
  strcpy(buf, result);
 }
 lock_basic_unlock(&ctime_lock);
 return result;
}
