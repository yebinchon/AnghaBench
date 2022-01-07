
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_stringbuf_t ;
typedef int svn_string_t ;
typedef int svn_stream_t ;
typedef int svn_error_t ;
struct TYPE_3__ {int cancel_baton; int cancel_func; } ;
typedef TYPE_1__ svn_cmdline_prompt_baton_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 scalar_t__ FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int merge_prop_conflict (int *,int const*,int const*,int const*,int *,int ,int ,int *) ;
 int open_editor (scalar_t__*,char const*,char const*,int *,int *) ;
 int svn_io_file_del_on_pool_cleanup ;
 int svn_stream_close (int *) ;
 int svn_stream_open_unique (int **,char const**,int *,int ,int *,int *) ;
 int * svn_string_create_from_buf (int *,int *) ;
 int svn_stringbuf_from_file2 (int **,char const*,int *) ;

__attribute__((used)) static svn_error_t *
edit_prop_conflict(const svn_string_t **merged_propval,
                   const svn_string_t *base_propval,
                   const svn_string_t *my_propval,
                   const svn_string_t *their_propval,
                   const char *editor_cmd,
                   apr_hash_t *config,
                   svn_cmdline_prompt_baton_t *pb,
                   apr_pool_t *result_pool,
                   apr_pool_t *scratch_pool)
{
  const char *file_path;
  svn_boolean_t performed_edit = FALSE;
  svn_stream_t *merged_prop;

  SVN_ERR(svn_stream_open_unique(&merged_prop, &file_path, ((void*)0),
                                 svn_io_file_del_on_pool_cleanup,
                                 scratch_pool, scratch_pool));
  SVN_ERR(merge_prop_conflict(merged_prop, base_propval, my_propval,
                              their_propval, ((void*)0),
                              pb->cancel_func,
                              pb->cancel_baton,
                              scratch_pool));
  SVN_ERR(svn_stream_close(merged_prop));
  SVN_ERR(open_editor(&performed_edit, file_path, editor_cmd,
                      config, scratch_pool));
  if (performed_edit && merged_propval)
    {
      svn_stringbuf_t *buf;

      SVN_ERR(svn_stringbuf_from_file2(&buf, file_path, scratch_pool));
      *merged_propval = svn_string_create_from_buf(buf, result_pool);
    }

  return SVN_NO_ERROR;
}
