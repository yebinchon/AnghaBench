
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_txdelta_stream_t ;
typedef int svn_stream_t ;
typedef int svn_error_t ;
typedef int serf_bucket_t ;
typedef int serf_bucket_alloc_t ;
struct TYPE_3__ {int session; int open_baton; int (* open_func ) (int **,int ,int *,int *) ;} ;
typedef TYPE_1__ open_txdelta_baton_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int negotiate_put_encoding (int*,int*,int ) ;
 int stub1 (int **,int ,int *,int *) ;
 int * svn_ra_serf__create_stream_bucket (int *,int *,int ,TYPE_1__*) ;
 int * svn_txdelta_to_svndiff_stream (int *,int,int,int *) ;
 int txdelta_stream_errfunc ;

__attribute__((used)) static svn_error_t *
create_body_from_txdelta_stream(serf_bucket_t **body_bkt,
                                void *baton,
                                serf_bucket_alloc_t *alloc,
                                apr_pool_t *pool ,
                                apr_pool_t *scratch_pool)
{
  open_txdelta_baton_t *b = baton;
  svn_txdelta_stream_t *txdelta_stream;
  svn_stream_t *stream;
  int svndiff_version;
  int compression_level;

  SVN_ERR(b->open_func(&txdelta_stream, b->open_baton, pool, scratch_pool));

  negotiate_put_encoding(&svndiff_version, &compression_level, b->session);
  stream = svn_txdelta_to_svndiff_stream(txdelta_stream, svndiff_version,
                                         compression_level, pool);
  *body_bkt = svn_ra_serf__create_stream_bucket(stream, alloc,
                                                txdelta_stream_errfunc, b);

  return SVN_NO_ERROR;
}
