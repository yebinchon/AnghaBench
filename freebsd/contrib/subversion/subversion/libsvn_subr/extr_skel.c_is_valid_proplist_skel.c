
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int is_atom; struct TYPE_4__* next; struct TYPE_4__* children; } ;
typedef TYPE_1__ svn_skel_t ;
typedef int svn_boolean_t ;


 int FALSE ;
 int TRUE ;
 int svn_skel__list_length (TYPE_1__ const*) ;

__attribute__((used)) static svn_boolean_t
is_valid_proplist_skel(const svn_skel_t *skel)
{
  int len = svn_skel__list_length(skel);

  if ((len >= 0) && (len & 1) == 0)
    {
      svn_skel_t *elt;

      for (elt = skel->children; elt; elt = elt->next)
        if (! elt->is_atom)
          return FALSE;

      return TRUE;
    }

  return FALSE;
}
