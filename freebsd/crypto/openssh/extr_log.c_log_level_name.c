
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct TYPE_2__ {char const* name; scalar_t__ val; } ;
typedef scalar_t__ LogLevel ;


 TYPE_1__* log_levels ;

const char *
log_level_name(LogLevel level)
{
 u_int i;

 for (i = 0; log_levels[i].name != ((void*)0); i++)
  if (log_levels[i].val == level)
   return log_levels[i].name;
 return ((void*)0);
}
