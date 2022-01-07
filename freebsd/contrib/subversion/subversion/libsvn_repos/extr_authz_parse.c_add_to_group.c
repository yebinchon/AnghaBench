
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * expanded_groups; TYPE_1__* authz; } ;
typedef TYPE_2__ ctor_baton_t ;
typedef int apr_hash_t ;
struct TYPE_5__ {int pool; } ;


 char* intern_string (TYPE_2__*,char const*,int) ;
 int * interned_empty_string ;
 int * svn_hash__make (int ) ;
 int * svn_hash_gets (int *,char const*) ;
 int svn_hash_sets (int *,char const*,int *) ;

__attribute__((used)) static void
add_to_group(ctor_baton_t *cb, const char *group, const char *user)
{
  apr_hash_t *members = svn_hash_gets(cb->expanded_groups, group);
  if (!members)
    {
      group = intern_string(cb, group, -1);
      members = svn_hash__make(cb->authz->pool);
      svn_hash_sets(cb->expanded_groups, group, members);
    }
  svn_hash_sets(members, user, interned_empty_string);
}
