
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RETSIGTYPE ;


 int LOG_DEBUG ;
 int errno ;
 int msyslog (int ,char*,int) ;

__attribute__((used)) static RETSIGTYPE
no_debug(
 int sig
 )
{
 int saved_errno = errno;

 msyslog(LOG_DEBUG, "ntpd not compiled for debugging (signal %d)", sig);
 errno = saved_errno;
}
