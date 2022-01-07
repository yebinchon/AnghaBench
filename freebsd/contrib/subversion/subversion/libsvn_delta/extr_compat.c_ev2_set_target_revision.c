
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_error_t ;
struct ev2_edit_baton {TYPE_1__* exb; } ;
typedef int apr_pool_t ;
struct TYPE_2__ {int baton; int (* target_revision ) (int ,int ,int *) ;} ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int stub1 (int ,int ,int *) ;

__attribute__((used)) static svn_error_t *
ev2_set_target_revision(void *edit_baton,
                        svn_revnum_t target_revision,
                        apr_pool_t *scratch_pool)
{
  struct ev2_edit_baton *eb = edit_baton;

  if (eb->exb->target_revision)
    SVN_ERR(eb->exb->target_revision(eb->exb->baton, target_revision,
                                     scratch_pool));

  return SVN_NO_ERROR;
}
