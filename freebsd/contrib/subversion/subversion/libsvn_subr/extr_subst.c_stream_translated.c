
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
typedef int svn_boolean_t ;
struct translated_stream_baton {void* buf; void* iterpool; scalar_t__ readbuf_off; int readbuf; int written; void* out_baton; void* in_baton; int * stream; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;


 int FALSE ;
 int SVN__TRANSLATION_BUF_SIZE ;
 scalar_t__ apr_hash_count (int *) ;
 int * apr_hash_first (int *,int *) ;
 int * apr_hash_make (int *) ;
 int * apr_hash_next (int *) ;
 int apr_hash_this (int *,void const**,int *,void**) ;
 void* apr_palloc (int *,int) ;
 char* apr_pstrdup (int *,void const*) ;
 void* create_translation_baton (char const*,int *,int ,int *,int ,int *) ;
 int svn_hash_sets (int *,char*,int ) ;
 void* svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int * svn_stream_create (struct translated_stream_baton*,int *) ;
 int svn_stream_set_close (int *,int ) ;
 int svn_stream_set_mark (int *,int ) ;
 int svn_stream_set_read2 (int *,int *,int ) ;
 int svn_stream_set_seek (int *,int ) ;
 int svn_stream_set_write (int *,int ) ;
 scalar_t__ svn_stream_supports_mark (int *) ;
 int svn_string_dup (void*,int *) ;
 int svn_stringbuf_create_empty (int *) ;
 int translated_stream_close ;
 int translated_stream_mark ;
 int translated_stream_read ;
 int translated_stream_seek ;
 int translated_stream_write ;

__attribute__((used)) static svn_stream_t *
stream_translated(svn_stream_t *stream,
                  const char *eol_str,
                  svn_boolean_t *translated_eol,
                  svn_boolean_t repair,
                  apr_hash_t *keywords,
                  svn_boolean_t expand,
                  apr_pool_t *result_pool)
{
  struct translated_stream_baton *baton
    = apr_palloc(result_pool, sizeof(*baton));
  svn_stream_t *s = svn_stream_create(baton, result_pool);



  if (eol_str)
    eol_str = apr_pstrdup(result_pool, eol_str);
  if (keywords)
    {
      if (apr_hash_count(keywords) == 0)
        keywords = ((void*)0);
      else
        {

          apr_hash_t *copy = apr_hash_make(result_pool);
          apr_hash_index_t *hi;
          apr_pool_t *subpool;

          subpool = svn_pool_create(result_pool);
          for (hi = apr_hash_first(subpool, keywords);
               hi; hi = apr_hash_next(hi))
            {
              const void *key;
              void *val;

              apr_hash_this(hi, &key, ((void*)0), &val);
              svn_hash_sets(copy, apr_pstrdup(result_pool, key),
                            svn_string_dup(val, result_pool));
            }
          svn_pool_destroy(subpool);

          keywords = copy;
        }
    }


  baton->stream = stream;
  baton->in_baton
    = create_translation_baton(eol_str, translated_eol, repair, keywords,
                               expand, result_pool);
  baton->out_baton
    = create_translation_baton(eol_str, translated_eol, repair, keywords,
                               expand, result_pool);
  baton->written = FALSE;
  baton->readbuf = svn_stringbuf_create_empty(result_pool);
  baton->readbuf_off = 0;
  baton->iterpool = svn_pool_create(result_pool);
  baton->buf = apr_palloc(result_pool, SVN__TRANSLATION_BUF_SIZE);


  svn_stream_set_read2(s, ((void*)0) ,
                       translated_stream_read);
  svn_stream_set_write(s, translated_stream_write);
  svn_stream_set_close(s, translated_stream_close);
  if (svn_stream_supports_mark(stream))
    {
      svn_stream_set_mark(s, translated_stream_mark);
      svn_stream_set_seek(s, translated_stream_seek);
    }

  return s;
}
