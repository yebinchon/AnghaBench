#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ svn_txdelta_window_handler_t ;
typedef  int /*<<< orphan*/  svn_stream_t ;
struct TYPE_3__ {int /*<<< orphan*/  (* set_fulltext ) (int /*<<< orphan*/ **,void*) ;int /*<<< orphan*/  (* apply_textdelta ) (scalar_t__*,void**,void*) ;} ;
typedef  TYPE_1__ svn_repos_parse_fns3_t ;
typedef  scalar_t__ svn_filesize_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  scalar_t__ apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_STREAM_UNEXPECTED_EOF ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,void**,void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,void*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,scalar_t__*) ; 
 int /*<<< orphan*/ * FUNC9 (scalar_t__,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC10(svn_stream_t *stream,
                 svn_filesize_t content_length,
                 svn_boolean_t is_delta,
                 const svn_repos_parse_fns3_t *parse_fns,
                 void *record_baton,
                 char *buffer,
                 apr_size_t buflen,
                 apr_pool_t *pool)
{
  svn_stream_t *text_stream = NULL;
  apr_size_t num_to_read, rlen, wlen;

  if (is_delta)
    {
      svn_txdelta_window_handler_t wh;
      void *whb;

      FUNC0(parse_fns->apply_textdelta(&wh, &whb, record_baton));
      if (wh)
        text_stream = FUNC9(wh, whb, TRUE, pool);
    }
  else
    {
      /* Get a stream to which we can push the data. */
      FUNC0(parse_fns->set_fulltext(&text_stream, record_baton));
    }

  /* Regardless of whether or not we have a sink for our data, we
     need to read it. */
  while (content_length)
    {
      if (content_length >= (svn_filesize_t)buflen)
        rlen = buflen;
      else
        rlen = (apr_size_t) content_length;

      num_to_read = rlen;
      FUNC0(FUNC7(stream, buffer, &rlen));
      content_length -= rlen;
      if (rlen != num_to_read)
        return FUNC2();

      if (text_stream)
        {
          /* write however many bytes you read. */
          wlen = rlen;
          FUNC0(FUNC8(text_stream, buffer, &wlen));
          if (wlen != rlen)
            {
              /* Uh oh, didn't write as many bytes as we read. */
              return FUNC5(SVN_ERR_STREAM_UNEXPECTED_EOF, NULL,
                                      FUNC1("Unexpected EOF writing contents"));
            }
        }
    }

  /* If we opened a stream, we must close it. */
  if (text_stream)
    FUNC0(FUNC6(text_stream));

  return SVN_NO_ERROR;
}