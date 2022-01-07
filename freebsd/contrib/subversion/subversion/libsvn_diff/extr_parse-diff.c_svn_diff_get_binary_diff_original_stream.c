
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_stream_t ;
struct TYPE_3__ {int src_filesize; int src_end; int src_start; int apr_file; } ;
typedef TYPE_1__ svn_diff_binary_patch_t ;
typedef int apr_pool_t ;


 int * get_base85_data_stream (int ,int ,int ,int *) ;
 int * get_verify_length_stream (int *,int ,int *) ;
 int * svn_stream_compressed (int *,int *) ;

svn_stream_t *
svn_diff_get_binary_diff_original_stream(const svn_diff_binary_patch_t *bpatch,
                                         apr_pool_t *result_pool)
{
  svn_stream_t *s = get_base85_data_stream(bpatch->apr_file, bpatch->src_start,
                                           bpatch->src_end, result_pool);

  s = svn_stream_compressed(s, result_pool);




  return get_verify_length_stream(s, bpatch->src_filesize, result_pool);
}
