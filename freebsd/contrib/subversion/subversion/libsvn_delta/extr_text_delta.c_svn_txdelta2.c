
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_txdelta_stream_t ;
typedef int svn_stream_t ;
typedef scalar_t__ svn_boolean_t ;
struct txdelta_baton {int * result_pool; int * context; int buf; void* more; void* more_source; int * target; int * source; } ;
typedef int apr_pool_t ;


 int SVN_DELTA_WINDOW_SIZE ;
 void* TRUE ;
 int apr_palloc (int *,int) ;
 struct txdelta_baton* apr_pcalloc (int *,int) ;
 int * svn_checksum_ctx_create (int ,int *) ;
 int svn_checksum_md5 ;
 int * svn_txdelta_stream_create (struct txdelta_baton*,int ,int ,int *) ;
 int txdelta_md5_digest ;
 int txdelta_next_window ;

void
svn_txdelta2(svn_txdelta_stream_t **stream,
             svn_stream_t *source,
             svn_stream_t *target,
             svn_boolean_t calculate_checksum,
             apr_pool_t *pool)
{
  struct txdelta_baton *b = apr_pcalloc(pool, sizeof(*b));

  b->source = source;
  b->target = target;
  b->more_source = TRUE;
  b->more = TRUE;
  b->buf = apr_palloc(pool, 2 * SVN_DELTA_WINDOW_SIZE);
  b->context = calculate_checksum
             ? svn_checksum_ctx_create(svn_checksum_md5, pool)
             : ((void*)0);
  b->result_pool = pool;

  *stream = svn_txdelta_stream_create(b, txdelta_next_window,
                                      txdelta_md5_digest, pool);
}
