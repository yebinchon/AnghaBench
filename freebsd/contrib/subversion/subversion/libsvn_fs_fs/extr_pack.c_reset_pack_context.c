
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_3__ {int info_pool; int paths; int reps_file; int dir_props_file; int file_props_file; int changes_file; int reps; int references; int path_order; int rev_offsets; int dir_props; int file_props; int changes; } ;
typedef TYPE_1__ pack_context_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int apr_array_clear (int ) ;
 int svn_io_file_close (int ,int *) ;
 int svn_io_file_del_on_close ;
 int svn_io_open_unique_file3 (int *,int *,char const*,int ,int ,int *) ;
 int svn_io_temp_dir (char const**,int *) ;
 int svn_pool_clear (int ) ;
 int svn_prefix_tree__create (int ) ;

__attribute__((used)) static svn_error_t *
reset_pack_context(pack_context_t *context,
                   apr_pool_t *pool)
{
  const char *temp_dir;

  apr_array_clear(context->changes);
  SVN_ERR(svn_io_file_close(context->changes_file, pool));
  apr_array_clear(context->file_props);
  SVN_ERR(svn_io_file_close(context->file_props_file, pool));
  apr_array_clear(context->dir_props);
  SVN_ERR(svn_io_file_close(context->dir_props_file, pool));

  apr_array_clear(context->rev_offsets);
  apr_array_clear(context->path_order);
  apr_array_clear(context->references);
  apr_array_clear(context->reps);
  SVN_ERR(svn_io_file_close(context->reps_file, pool));

  svn_pool_clear(context->info_pool);



  SVN_ERR(svn_io_temp_dir(&temp_dir, pool));
  SVN_ERR(svn_io_open_unique_file3(&context->changes_file, ((void*)0), temp_dir,
                                   svn_io_file_del_on_close,
                                   context->info_pool, pool));
  SVN_ERR(svn_io_open_unique_file3(&context->file_props_file, ((void*)0), temp_dir,
                                   svn_io_file_del_on_close,
                                   context->info_pool, pool));
  SVN_ERR(svn_io_open_unique_file3(&context->dir_props_file, ((void*)0), temp_dir,
                                   svn_io_file_del_on_close,
                                   context->info_pool, pool));
  SVN_ERR(svn_io_open_unique_file3(&context->reps_file, ((void*)0), temp_dir,
                                   svn_io_file_del_on_close,
                                   context->info_pool, pool));
  context->paths = svn_prefix_tree__create(context->info_pool);

  return SVN_NO_ERROR;
}
