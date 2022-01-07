
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_3__ {int info_pool; int paths; int reps_file; int reps; int references; int path_order; int rev_offsets; int dir_props_file; int dir_props; int file_props_file; int file_props; int changes_file; int changes; } ;
typedef TYPE_1__ pack_context_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int apr_array_clear (int ) ;
 int svn_io_file_trunc (int ,int ,int *) ;
 int svn_pool_clear (int ) ;
 int svn_prefix_tree__create (int ) ;

__attribute__((used)) static svn_error_t *
reset_pack_context(pack_context_t *context,
                   apr_pool_t *scratch_pool)
{
  apr_array_clear(context->changes);
  SVN_ERR(svn_io_file_trunc(context->changes_file, 0, scratch_pool));
  apr_array_clear(context->file_props);
  SVN_ERR(svn_io_file_trunc(context->file_props_file, 0, scratch_pool));
  apr_array_clear(context->dir_props);
  SVN_ERR(svn_io_file_trunc(context->dir_props_file, 0, scratch_pool));

  apr_array_clear(context->rev_offsets);
  apr_array_clear(context->path_order);
  apr_array_clear(context->references);
  apr_array_clear(context->reps);
  SVN_ERR(svn_io_file_trunc(context->reps_file, 0, scratch_pool));

  svn_pool_clear(context->info_pool);
  context->paths = svn_prefix_tree__create(context->info_pool);

  return SVN_NO_ERROR;
}
