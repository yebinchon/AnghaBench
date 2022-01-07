
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__ const* next; int is_atom; TYPE_2__* children; } ;
typedef TYPE_1__ const svn_skel_t ;
typedef int svn_boolean_t ;
struct TYPE_7__ {TYPE_1__ const* next; } ;


 int FALSE ;
 scalar_t__ is_valid_version_info_skel (TYPE_1__ const*) ;
 int svn_skel__list_length (TYPE_1__ const*) ;
 int svn_skel__matches_atom (TYPE_2__*,char*) ;

__attribute__((used)) static svn_boolean_t
is_valid_conflict_skel(const svn_skel_t *skel)
{
  int i;

  if (svn_skel__list_length(skel) != 8
      || !svn_skel__matches_atom(skel->children, "conflict"))
    return FALSE;


  skel = skel->children->next;
  for (i = 5; i--; skel = skel->next)
    if (!skel->is_atom)
      return FALSE;


  return (is_valid_version_info_skel(skel)
          && is_valid_version_info_skel(skel->next));
}
