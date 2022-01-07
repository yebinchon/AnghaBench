
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int val; scalar_t__ name; } ;
typedef int SyslogFacility ;


 int SYSLOG_FACILITY_NOT_SET ;
 TYPE_1__* log_facilities ;
 scalar_t__ strcasecmp (scalar_t__,char*) ;

SyslogFacility
log_facility_number(char *name)
{
 int i;

 if (name != ((void*)0))
  for (i = 0; log_facilities[i].name; i++)
   if (strcasecmp(log_facilities[i].name, name) == 0)
    return log_facilities[i].val;
 return SYSLOG_FACILITY_NOT_SET;
}
