
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* children; struct TYPE_4__* next; int is_atom; } ;
typedef TYPE_1__ svn_skel_t ;


 int SVN_ERR_ASSERT_NO_RETURN (int) ;

void
svn_skel__prepend(svn_skel_t *skel, svn_skel_t *list_skel)
{


  SVN_ERR_ASSERT_NO_RETURN(! list_skel->is_atom);

  skel->next = list_skel->children;
  list_skel->children = skel;
}
