
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32 ;
typedef scalar_t__ u_char ;


 int DENYKISS ;
 scalar_t__ LEAP_NOTINSYNC ;
 scalar_t__ MODE_SERVER ;
 int NOKISS ;
 int RATEKISS ;
 int RSTRKISS ;
 scalar_t__ STRATUM_UNSPEC ;
 int XKISS ;
 scalar_t__ memcmp (int *,char*,int) ;

int
kiss_code_check(
 u_char hisleap,
 u_char hisstratum,
 u_char hismode,
 u_int32 refid
 )
{

 if ( hismode == MODE_SERVER
     && hisleap == LEAP_NOTINSYNC
     && hisstratum == STRATUM_UNSPEC) {
  if(memcmp(&refid,"RATE", 4) == 0) {
   return (RATEKISS);
  } else if(memcmp(&refid,"DENY", 4) == 0) {
   return (DENYKISS);
  } else if(memcmp(&refid,"RSTR", 4) == 0) {
   return (RSTRKISS);
  } else if(memcmp(&refid,"X", 1) == 0) {
   return (XKISS);
  }
 }
 return (NOKISS);
}
