
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_sqlite__db_t ;
struct TYPE_5__ {struct TYPE_5__* next; struct TYPE_5__* children; int is_atom; } ;
typedef TYPE_1__ svn_skel_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int * SVN_NO_ERROR ;
 scalar_t__ SVN_WC__SINGLE_WORK_ITEM (TYPE_1__ const*) ;
 int add_single_work_item (int *,TYPE_1__ const*,int *) ;
 int * svn_error_trace (int ) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;

__attribute__((used)) static svn_error_t *
add_work_items(svn_sqlite__db_t *sdb,
               const svn_skel_t *skel,
               apr_pool_t *scratch_pool)
{
  apr_pool_t *iterpool;


  if (skel == ((void*)0))
    return SVN_NO_ERROR;


  SVN_ERR_ASSERT(!skel->is_atom);


  if (SVN_WC__SINGLE_WORK_ITEM(skel))
    return svn_error_trace(add_single_work_item(sdb, skel, scratch_pool));



  iterpool = svn_pool_create(scratch_pool);
  for (skel = skel->children; skel; skel = skel->next)
    {
      svn_pool_clear(iterpool);

      SVN_ERR(add_single_work_item(sdb, skel, iterpool));
    }
  svn_pool_destroy(iterpool);

  return SVN_NO_ERROR;
}
