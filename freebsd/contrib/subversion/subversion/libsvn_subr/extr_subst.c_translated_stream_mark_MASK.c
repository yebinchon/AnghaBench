#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_stream_mark_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct translated_stream_baton {int /*<<< orphan*/  buf; int /*<<< orphan*/  readbuf_off; int /*<<< orphan*/  readbuf; int /*<<< orphan*/  written; int /*<<< orphan*/  out_baton; int /*<<< orphan*/  in_baton; int /*<<< orphan*/  stream; } ;
struct TYPE_4__ {void* buf; int /*<<< orphan*/  readbuf_off; int /*<<< orphan*/  readbuf; int /*<<< orphan*/  written; void* out_baton; void* in_baton; } ;
struct TYPE_5__ {TYPE_1__ saved_baton; int /*<<< orphan*/  mark; } ;
typedef  TYPE_2__ mark_translated_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int SVN__TRANSLATION_BUF_SIZE ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *,int) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC5(void *baton, svn_stream_mark_t **mark, apr_pool_t *pool)
{
  mark_translated_t *mt;
  struct translated_stream_baton *b = baton;

  mt = FUNC1(pool, sizeof(*mt));
  FUNC0(FUNC3(b->stream, &mt->mark, pool));

  /* Save translation state. */
  mt->saved_baton.in_baton = FUNC2(pool, b->in_baton,
                                         sizeof(*mt->saved_baton.in_baton));
  mt->saved_baton.out_baton = FUNC2(pool, b->out_baton,
                                          sizeof(*mt->saved_baton.out_baton));
  mt->saved_baton.written = b->written;
  mt->saved_baton.readbuf = FUNC4(b->readbuf, pool);
  mt->saved_baton.readbuf_off = b->readbuf_off;
  mt->saved_baton.buf = FUNC2(pool, b->buf, SVN__TRANSLATION_BUF_SIZE);

  *mark = (svn_stream_mark_t *)mt;

  return SVN_NO_ERROR;
}