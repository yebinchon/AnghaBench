
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; struct TYPE_4__* children; int is_atom; } ;
typedef TYPE_1__ svn_skel_t ;


 int SVN_ERR_ASSERT_NO_RETURN (int) ;

void svn_skel__append(svn_skel_t *list_skel, svn_skel_t *skel)
{
  SVN_ERR_ASSERT_NO_RETURN(list_skel != ((void*)0) && !list_skel->is_atom);

  if (list_skel->children == ((void*)0))
    {
      list_skel->children = skel;
    }
  else
    {
      list_skel = list_skel->children;
      while (list_skel->next != ((void*)0))
        list_skel = list_skel->next;
      list_skel->next = skel;
    }
}
