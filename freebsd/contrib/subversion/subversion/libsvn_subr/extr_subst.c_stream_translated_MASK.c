#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct translated_stream_baton {void* buf; void* iterpool; scalar_t__ readbuf_off; int /*<<< orphan*/  readbuf; int /*<<< orphan*/  written; void* out_baton; void* in_baton; int /*<<< orphan*/ * stream; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int SVN__TRANSLATION_BUF_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,void const**,int /*<<< orphan*/ *,void**) ; 
 void* FUNC5 (int /*<<< orphan*/ *,int) ; 
 char* FUNC6 (int /*<<< orphan*/ *,void const*) ; 
 void* FUNC7 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 void* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (struct translated_stream_baton*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  translated_stream_close ; 
 int /*<<< orphan*/  translated_stream_mark ; 
 int /*<<< orphan*/  translated_stream_read ; 
 int /*<<< orphan*/  translated_stream_seek ; 
 int /*<<< orphan*/  translated_stream_write ; 

__attribute__((used)) static svn_stream_t *
FUNC20(svn_stream_t *stream,
                  const char *eol_str,
                  svn_boolean_t *translated_eol,
                  svn_boolean_t repair,
                  apr_hash_t *keywords,
                  svn_boolean_t expand,
                  apr_pool_t *result_pool)
{
  struct translated_stream_baton *baton
    = FUNC5(result_pool, sizeof(*baton));
  svn_stream_t *s = FUNC11(baton, result_pool);

  /* Make sure EOL_STR and KEYWORDS are allocated in RESULT_POOL
     so they have the same lifetime as the stream. */
  if (eol_str)
    eol_str = FUNC6(result_pool, eol_str);
  if (keywords)
    {
      if (FUNC0(keywords) == 0)
        keywords = NULL;
      else
        {
          /* deep copy the hash to make sure it's allocated in RESULT_POOL */
          apr_hash_t *copy = FUNC2(result_pool);
          apr_hash_index_t *hi;
          apr_pool_t *subpool;

          subpool = FUNC9(result_pool);
          for (hi = FUNC1(subpool, keywords);
               hi; hi = FUNC3(hi))
            {
              const void *key;
              void *val;

              FUNC4(hi, &key, NULL, &val);
              FUNC8(copy, FUNC6(result_pool, key),
                            FUNC18(val, result_pool));
            }
          FUNC10(subpool);

          keywords = copy;
        }
    }

  /* Setup the baton fields */
  baton->stream = stream;
  baton->in_baton
    = FUNC7(eol_str, translated_eol, repair, keywords,
                               expand, result_pool);
  baton->out_baton
    = FUNC7(eol_str, translated_eol, repair, keywords,
                               expand, result_pool);
  baton->written = FALSE;
  baton->readbuf = FUNC19(result_pool);
  baton->readbuf_off = 0;
  baton->iterpool = FUNC9(result_pool);
  baton->buf = FUNC5(result_pool, SVN__TRANSLATION_BUF_SIZE);

  /* Setup the stream methods */
  FUNC14(s, NULL /* only full read support */,
                       translated_stream_read);
  FUNC16(s, translated_stream_write);
  FUNC12(s, translated_stream_close);
  if (FUNC17(stream))
    {
      FUNC13(s, translated_stream_mark);
      FUNC15(s, translated_stream_seek);
    }

  return s;
}