
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_longlong_t ;
typedef int spa_t ;
struct TYPE_2__ {int machine; int version; int release; int nodename; } ;


 int SPA_VERSION ;
 int ZPL_VERSION ;
 int spa_history_log_internal (int *,char const*,int *,char*,int ,int ,int ,int ,int ,int ,int ) ;
 scalar_t__ spa_version (int *) ;
 TYPE_1__ utsname ;

void
spa_history_log_version(spa_t *spa, const char *operation)
{
 spa_history_log_internal(spa, operation, ((void*)0),
     "pool version %llu; software version %llu/%llu; uts %s %s %s %s",
     (u_longlong_t)spa_version(spa), SPA_VERSION, ZPL_VERSION,
     utsname.nodename, utsname.release, utsname.version,
     utsname.machine);
}
