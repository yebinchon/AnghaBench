
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_boolean_t ;
struct TYPE_5__ {int name; } ;
typedef TYPE_1__ cfg_section_t ;
struct TYPE_6__ {int value; int name; } ;
typedef TYPE_2__ cfg_option_t ;


 int FALSE ;
 int svn_config_set (void*,int ,int ,int ) ;

__attribute__((used)) static svn_boolean_t
merge_callback(void *baton, cfg_section_t *section, cfg_option_t *option)
{
  svn_config_set(baton, section->name, option->name, option->value);
  return FALSE;
}
