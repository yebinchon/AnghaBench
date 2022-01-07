
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct TYPE_2__ {char const* name; scalar_t__ val; } ;
typedef scalar_t__ SyslogFacility ;


 TYPE_1__* log_facilities ;

const char *
log_facility_name(SyslogFacility facility)
{
 u_int i;

 for (i = 0; log_facilities[i].name; i++)
  if (log_facilities[i].val == facility)
   return log_facilities[i].name;
 return ((void*)0);
}
