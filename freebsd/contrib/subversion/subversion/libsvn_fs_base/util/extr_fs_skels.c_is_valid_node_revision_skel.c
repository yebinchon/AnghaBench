
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* next; struct TYPE_9__* children; scalar_t__ len; scalar_t__ is_atom; } ;
typedef TYPE_2__ svn_skel_t ;
typedef int svn_boolean_t ;
struct TYPE_8__ {scalar_t__ is_atom; TYPE_2__* next; scalar_t__ len; } ;


 int FALSE ;
 int TRUE ;
 int is_valid_node_revision_header_skel (TYPE_2__*,TYPE_2__**) ;
 int svn_skel__list_length (TYPE_2__*) ;
 scalar_t__ svn_skel__matches_atom (TYPE_2__*,char*) ;

__attribute__((used)) static svn_boolean_t
is_valid_node_revision_skel(svn_skel_t *skel)
{
  int len = svn_skel__list_length(skel);
  svn_skel_t *header = skel->children;
  svn_skel_t *kind;

  if (len < 1)
    return FALSE;

  if (! is_valid_node_revision_header_skel(header, &kind))
    return FALSE;

  if (svn_skel__matches_atom(kind, "dir"))
    {
      if (! ((len == 3)
             && header->next->is_atom
             && header->next->next->is_atom))
        return FALSE;
    }
  else if (svn_skel__matches_atom(kind, "file"))
    {
      if (len < 3)
        return FALSE;

      if (! header->next->is_atom)
        return FALSE;



      if (! header->next->next->is_atom)
        {
          if (! ((svn_skel__list_length(header->next->next) == 2)
                 && header->next->next->children->is_atom
                 && header->next->next->children->len
                 && header->next->next->children->next->is_atom
                 && header->next->next->children->next->len))
            return FALSE;
        }

      if ((len > 3) && (! header->next->next->next->is_atom))
        return FALSE;

      if (len > 4)
        return FALSE;
    }

  return TRUE;
}
