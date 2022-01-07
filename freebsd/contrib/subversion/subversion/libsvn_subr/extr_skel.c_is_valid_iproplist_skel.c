
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* next; int is_atom; struct TYPE_5__* children; } ;
typedef TYPE_1__ svn_skel_t ;
typedef int svn_boolean_t ;


 int FALSE ;
 int TRUE ;
 int is_valid_proplist_skel (TYPE_1__*) ;
 int svn_skel__list_length (TYPE_1__ const*) ;

__attribute__((used)) static svn_boolean_t
is_valid_iproplist_skel(const svn_skel_t *skel)
{
  int len = svn_skel__list_length(skel);

  if ((len >= 0) && (len & 1) == 0)
    {
      svn_skel_t *elt;

      for (elt = skel->children; elt; elt = elt->next)
        {
          if (!elt->is_atom)
            return FALSE;

          if (elt->next == ((void*)0))
            return FALSE;

          elt = elt->next;

          if (! is_valid_proplist_skel(elt))
            return FALSE;
        }

      return TRUE;
    }

  return FALSE;
}
