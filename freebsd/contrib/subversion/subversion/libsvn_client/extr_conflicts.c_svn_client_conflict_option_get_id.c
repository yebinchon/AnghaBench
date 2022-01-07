
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int id; } ;
typedef TYPE_1__ svn_client_conflict_option_t ;
typedef int svn_client_conflict_option_id_t ;



svn_client_conflict_option_id_t
svn_client_conflict_option_get_id(svn_client_conflict_option_t *option)
{
  return option->id;
}
