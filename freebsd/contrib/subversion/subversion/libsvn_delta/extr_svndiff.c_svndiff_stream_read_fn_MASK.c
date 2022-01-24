#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ read_pos; TYPE_2__* window_buffer; scalar_t__ hit_eof; int /*<<< orphan*/  handler_baton; int /*<<< orphan*/  (* handler ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;int /*<<< orphan*/  scratch_pool; int /*<<< orphan*/  txstream; } ;
typedef  TYPE_1__ svndiff_stream_baton_t ;
typedef  int /*<<< orphan*/  svn_txdelta_window_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ apr_size_t ;
struct TYPE_4__ {scalar_t__ len; scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC6(void *baton, char *buffer, apr_size_t *len)
{
  svndiff_stream_baton_t *b = baton;
  apr_size_t left = *len;
  apr_size_t read = 0;

  while (left)
    {
      apr_size_t chunk_size;

      if (b->read_pos == b->window_buffer->len && !b->hit_eof)
        {
          svn_txdelta_window_t *window;

          FUNC3(b->scratch_pool);
          FUNC4(b->window_buffer);
          FUNC0(FUNC5(&window, b->txstream,
                                          b->scratch_pool));
          FUNC0(b->handler(window, b->handler_baton));
          b->read_pos = 0;

          if (!window)
            b->hit_eof = TRUE;
        }

      if (left > b->window_buffer->len - b->read_pos)
        chunk_size = b->window_buffer->len - b->read_pos;
      else
        chunk_size = left;

      if (!chunk_size)
          break;

      FUNC1(buffer, b->window_buffer->data + b->read_pos, chunk_size);
      b->read_pos += chunk_size;
      buffer += chunk_size;
      read += chunk_size;
      left -= chunk_size;
    }

  *len = read;
  return SVN_NO_ERROR;
}