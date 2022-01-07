
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_stringbuf_t ;
typedef scalar_t__ svn_revnum_t ;
typedef int svn_packed__int_stream_t ;
typedef int svn_packed__data_root_t ;
typedef int svn_error_t ;
struct TYPE_3__ {int tag; scalar_t__ start_rev; } ;
typedef TYPE_1__ manifest_entry_t ;
typedef scalar_t__ apr_size_t ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int SVN_ERR_W (int ,int ) ;
 int * SVN_NO_ERROR ;
 int * apr_array_make (int *,int,int) ;
 TYPE_1__* apr_array_push (int *) ;
 int apr_psprintf (int *,char*,scalar_t__) ;
 int read_packed_data_checksummed (int **,int *,int *,int *) ;
 int * svn_packed__first_int_stream (int *) ;
 scalar_t__ svn_packed__get_int (int *) ;
 int svn_packed__get_uint (int *) ;
 scalar_t__ svn_packed__int_count (int *) ;
 int * svn_packed__next_int_stream (int *) ;

__attribute__((used)) static svn_error_t *
read_manifest(apr_array_header_t **manifest,
              svn_stringbuf_t *content,
              svn_revnum_t revision,
              apr_pool_t *result_pool,
              apr_pool_t *scratch_pool)
{
  apr_size_t i;
  apr_size_t count;

  svn_packed__data_root_t *root;
  svn_packed__int_stream_t *start_rev_stream;
  svn_packed__int_stream_t *tag_stream;


  SVN_ERR_W(read_packed_data_checksummed(&root, content, result_pool,
                                         scratch_pool),
            apr_psprintf(scratch_pool,
                         "Revprop manifest file for r%ld is corrupt",
                         revision));


  start_rev_stream = svn_packed__first_int_stream(root);
  tag_stream = svn_packed__next_int_stream(start_rev_stream);


  count = svn_packed__int_count(start_rev_stream);
  *manifest = apr_array_make(result_pool, (int)count,
                            sizeof(manifest_entry_t));

  for (i = 0; i < count; ++i)
    {
      manifest_entry_t *entry = apr_array_push(*manifest);
      entry->start_rev = (svn_revnum_t)svn_packed__get_int(start_rev_stream);
      entry->tag = svn_packed__get_uint(tag_stream);
    }

  return SVN_NO_ERROR;
}
