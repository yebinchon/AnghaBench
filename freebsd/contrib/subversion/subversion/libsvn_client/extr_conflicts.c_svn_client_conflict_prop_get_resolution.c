
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int resolved_props; } ;
typedef TYPE_1__ svn_client_conflict_t ;
typedef int svn_client_conflict_option_t ;
typedef int svn_client_conflict_option_id_t ;


 int svn_client_conflict_option_get_id (int *) ;
 int svn_client_conflict_option_unspecified ;
 int * svn_hash_gets (int ,char const*) ;

svn_client_conflict_option_id_t
svn_client_conflict_prop_get_resolution(svn_client_conflict_t *conflict,
                                        const char *propname)
{
  svn_client_conflict_option_t *option;

  option = svn_hash_gets(conflict->resolved_props, propname);
  if (option == ((void*)0))
    return svn_client_conflict_option_unspecified;

  return svn_client_conflict_option_get_id(option);
}
