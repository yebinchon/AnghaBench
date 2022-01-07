
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* first; } ;
struct config_file {TYPE_1__ control_ifs; int remote_control_enable; } ;
struct TYPE_4__ {char* str; } ;



int options_remote_is_address(struct config_file* cfg)
{
 if(!cfg->remote_control_enable) return 0;
 if(!cfg->control_ifs.first) return 1;
 if(!cfg->control_ifs.first->str) return 1;
 if(cfg->control_ifs.first->str[0] == 0) return 1;
 return (cfg->control_ifs.first->str[0] != '/');
}
