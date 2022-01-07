
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int disable_opts; int enable_opts; } ;
typedef TYPE_1__ config_tree ;


 int apply_enable_disable (int ,int) ;

__attribute__((used)) static void
config_system_opts(
 config_tree *ptree
 )
{
 apply_enable_disable(ptree->enable_opts, 1);
 apply_enable_disable(ptree->disable_opts, 0);
}
