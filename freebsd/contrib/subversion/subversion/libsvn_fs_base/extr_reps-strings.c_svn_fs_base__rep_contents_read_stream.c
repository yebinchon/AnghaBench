
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int trail_t ;
typedef int svn_stream_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct rep_read_baton {int dummy; } ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int rep_read_contents ;
 int rep_read_get_baton (struct rep_read_baton**,int *,char const*,int ,int *,int *) ;
 int * svn_stream_create (struct rep_read_baton*,int *) ;
 int svn_stream_set_read2 (int *,int *,int ) ;

svn_error_t *
svn_fs_base__rep_contents_read_stream(svn_stream_t **rs_p,
                                      svn_fs_t *fs,
                                      const char *rep_key,
                                      svn_boolean_t use_trail_for_reads,
                                      trail_t *trail,
                                      apr_pool_t *pool)
{
  struct rep_read_baton *rb;

  SVN_ERR(rep_read_get_baton(&rb, fs, rep_key, use_trail_for_reads,
                             trail, pool));
  *rs_p = svn_stream_create(rb, pool);
  svn_stream_set_read2(*rs_p, ((void*)0) ,
                       rep_read_contents);

  return SVN_NO_ERROR;
}
