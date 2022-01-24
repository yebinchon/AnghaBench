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
typedef  int /*<<< orphan*/  svn_stream_mark_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct stringbuf_stream_mark {scalar_t__ pos; } ;
struct stringbuf_stream_baton {scalar_t__ amt_read; } ;

/* Variables and functions */
 int /*<<< orphan*/ * SVN_NO_ERROR ; 

__attribute__((used)) static svn_error_t *
FUNC0(void *baton, const svn_stream_mark_t *mark)
{
  struct stringbuf_stream_baton *btn = baton;

  if (mark != NULL)
    {
      const struct stringbuf_stream_mark *stringbuf_stream_mark;

      stringbuf_stream_mark = (const struct stringbuf_stream_mark *)mark;
      btn->amt_read = stringbuf_stream_mark->pos;
    }
  else
    btn->amt_read = 0;

  return SVN_NO_ERROR;
}