
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int console; } ;
typedef TYPE_1__ osm_subn_opt_t ;


 scalar_t__ is_local (int ) ;
 scalar_t__ is_loopback (int ) ;
 scalar_t__ is_remote (int ) ;

int is_console_enabled(osm_subn_opt_t * p_opt)
{

 if (p_opt)
  return is_local(p_opt->console) || is_loopback(p_opt->console)
   || is_remote(p_opt->console);
 return 0;
}
