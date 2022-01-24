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
struct TYPE_3__ {int /*<<< orphan*/  baton; int /*<<< orphan*/  (* skip_fn ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/ * read_fn; int /*<<< orphan*/ * read_full_fn; } ;
typedef  TYPE_1__ svn_stream_t ;
typedef  int /*<<< orphan*/ * svn_read_fn_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  SVN_ERR_STREAM_NOT_SUPPORTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 

svn_error_t *
FUNC4(svn_stream_t *stream, apr_size_t len)
{
  if (stream->skip_fn == NULL)
    {
      svn_read_fn_t read_fn = stream->read_full_fn ? stream->read_full_fn
                                                   : stream->read_fn;
      if (read_fn == NULL)
        return FUNC2(SVN_ERR_STREAM_NOT_SUPPORTED, NULL, NULL);

      return FUNC3(FUNC0(stream->baton, len,
                                                  read_fn));
    }

  return FUNC3(stream->skip_fn(stream->baton, len));
}