
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int dummy; } ;


 scalar_t__ __isthreaded ;
 struct tm* _pthread_getspecific (int ) ;
 int _pthread_once (int *,int ) ;
 int _pthread_setspecific (int ,struct tm*) ;
 scalar_t__ errno ;
 int gmtime_key ;
 scalar_t__ gmtime_key_error ;
 int gmtime_key_init ;
 int gmtime_once ;
 int gmtsub (int const* const,long,struct tm*) ;
 scalar_t__ malloc (int) ;
 struct tm tm ;

struct tm *
gmtime(const time_t *const timep)
{
 struct tm *p_tm;

 if (__isthreaded != 0) {
  _pthread_once(&gmtime_once, gmtime_key_init);
  if (gmtime_key_error != 0) {
   errno = gmtime_key_error;
   return(((void*)0));
  }




  if ((p_tm = _pthread_getspecific(gmtime_key)) == ((void*)0)) {
   if ((p_tm = (struct tm *)malloc(sizeof(struct tm)))
       == ((void*)0)) {
    return(((void*)0));
   }
   _pthread_setspecific(gmtime_key, p_tm);
  }
  gmtsub(timep, 0L, p_tm);
  return(p_tm);
 }
 else {
  gmtsub(timep, 0L, &tm);
  return(&tm);
 }
}
