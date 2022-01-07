
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__ const* next; struct TYPE_4__ const* children; } ;
typedef TYPE_1__ svn_skel_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;


 int FALSE ;
 int SVN_ERR_INCOMPLETE_DATA ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 int * svn_error_create (int ,int *,int ) ;
 int svn_skel__list_length (TYPE_1__ const*) ;

svn_error_t *
svn_wc__conflict_skel_is_complete(svn_boolean_t *complete,
                                  const svn_skel_t *conflict_skel)
{
  *complete = FALSE;

  if (svn_skel__list_length(conflict_skel) < 2)
    return svn_error_create(SVN_ERR_INCOMPLETE_DATA, ((void*)0),
                            _("Not a conflict skel"));

  if (svn_skel__list_length(conflict_skel->children) < 2)
    return SVN_NO_ERROR;

  if (svn_skel__list_length(conflict_skel->children->next) == 0)
    return SVN_NO_ERROR;

  *complete = TRUE;
  return SVN_NO_ERROR;
}
