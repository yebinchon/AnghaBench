
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_stream_mark_t ;
typedef int svn_error_t ;
struct translated_stream_baton {int buf; int readbuf_off; int readbuf; int written; int out_baton; int in_baton; int stream; } ;
struct TYPE_4__ {void* buf; int readbuf_off; int readbuf; int written; void* out_baton; void* in_baton; } ;
struct TYPE_5__ {TYPE_1__ saved_baton; int mark; } ;
typedef TYPE_2__ mark_translated_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN__TRANSLATION_BUF_SIZE ;
 TYPE_2__* apr_palloc (int *,int) ;
 void* apr_pmemdup (int *,int ,int) ;
 int svn_stream_mark (int ,int *,int *) ;
 int svn_stringbuf_dup (int ,int *) ;

__attribute__((used)) static svn_error_t *
translated_stream_mark(void *baton, svn_stream_mark_t **mark, apr_pool_t *pool)
{
  mark_translated_t *mt;
  struct translated_stream_baton *b = baton;

  mt = apr_palloc(pool, sizeof(*mt));
  SVN_ERR(svn_stream_mark(b->stream, &mt->mark, pool));


  mt->saved_baton.in_baton = apr_pmemdup(pool, b->in_baton,
                                         sizeof(*mt->saved_baton.in_baton));
  mt->saved_baton.out_baton = apr_pmemdup(pool, b->out_baton,
                                          sizeof(*mt->saved_baton.out_baton));
  mt->saved_baton.written = b->written;
  mt->saved_baton.readbuf = svn_stringbuf_dup(b->readbuf, pool);
  mt->saved_baton.readbuf_off = b->readbuf_off;
  mt->saved_baton.buf = apr_pmemdup(pool, b->buf, SVN__TRANSLATION_BUF_SIZE);

  *mark = (svn_stream_mark_t *)mt;

  return SVN_NO_ERROR;
}
