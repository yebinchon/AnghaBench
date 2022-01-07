
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_wc_conflict_description2_t ;
struct TYPE_3__ {scalar_t__ legacy_prop_conflict_propname; scalar_t__ prop_conflicts; int const* legacy_tree_conflict; int const* legacy_text_conflict; } ;
typedef TYPE_1__ svn_client_conflict_t ;


 int const* svn_hash_gets (scalar_t__,scalar_t__) ;

__attribute__((used)) static const svn_wc_conflict_description2_t *
get_conflict_desc2_t(svn_client_conflict_t *conflict)
{
  if (conflict->legacy_text_conflict)
    return conflict->legacy_text_conflict;

  if (conflict->legacy_tree_conflict)
    return conflict->legacy_tree_conflict;

  if (conflict->prop_conflicts && conflict->legacy_prop_conflict_propname)
    return svn_hash_gets(conflict->prop_conflicts,
                         conflict->legacy_prop_conflict_propname);

  return ((void*)0);
}
