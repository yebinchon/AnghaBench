
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_ERR ;
 size_t MUL_NO_OVERFLOW ;
 size_t SIZE_MAX ;
 int TRUE ;
 void* ereallocz (void*,size_t,int ,int ,...) ;
 int exit (int) ;
 int msyslog (int ,char*,...) ;

void *
oreallocarrayxz(
 void *optr,
 size_t nmemb,
 size_t size,
 size_t extra





 )
{
 if ((nmemb >= MUL_NO_OVERFLOW || size >= MUL_NO_OVERFLOW) &&
     nmemb > 0 && SIZE_MAX / nmemb < size) {

  msyslog(LOG_ERR, "fatal allocation size overflow");





  exit(1);
 }

 return ereallocz(optr, extra + (size * nmemb), 0, TRUE);



}
