
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int svn_wc_conflict_version_t ;
struct TYPE_12__ {struct TYPE_12__* children; TYPE_1__* next; } ;
typedef TYPE_2__ svn_skel_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
struct TYPE_11__ {int is_atom; } ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int * SVN_NO_ERROR ;
 int SVN_WC__CONFLICT_OP_SWITCH ;
 int TRUE ;
 int conflict__get_operation (TYPE_2__**,TYPE_2__*) ;
 int conflict__prepend_location (TYPE_2__*,int const*,int ,int *,int *) ;
 TYPE_2__* svn_skel__make_empty_list (int *) ;
 int svn_skel__prepend (TYPE_2__*,TYPE_2__*) ;
 int svn_skel__prepend_str (int ,TYPE_2__*,int *) ;

svn_error_t *
svn_wc__conflict_skel_set_op_switch(svn_skel_t *conflict_skel,
                                    const svn_wc_conflict_version_t *original,
                                    const svn_wc_conflict_version_t *target,
                                    apr_pool_t *result_pool,
                                    apr_pool_t *scratch_pool)
{
  svn_skel_t *why;
  svn_skel_t *origins;

  SVN_ERR_ASSERT(conflict_skel
                 && conflict_skel->children
                 && conflict_skel->children->next
                 && !conflict_skel->children->next->is_atom);

  SVN_ERR(conflict__get_operation(&why, conflict_skel));

  SVN_ERR_ASSERT(why == ((void*)0));

  why = conflict_skel->children;

  origins = svn_skel__make_empty_list(result_pool);

  SVN_ERR(conflict__prepend_location(origins, target, TRUE,
                                     result_pool, scratch_pool));
  SVN_ERR(conflict__prepend_location(origins, original, TRUE,
                                     result_pool, scratch_pool));

  svn_skel__prepend(origins, why);
  svn_skel__prepend_str(SVN_WC__CONFLICT_OP_SWITCH, why, result_pool);

  return SVN_NO_ERROR;
}
