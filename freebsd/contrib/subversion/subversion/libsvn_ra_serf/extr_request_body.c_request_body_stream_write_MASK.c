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
struct TYPE_3__ {scalar_t__ total_bytes; scalar_t__ in_memory_size; scalar_t__ alloc; scalar_t__ collect_bucket; scalar_t__ scratch_pool; scalar_t__ file; int /*<<< orphan*/  result_pool; } ;
typedef  TYPE_1__ svn_ra_serf__request_body_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ apr_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 char* FUNC1 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  serf_free_no_error ; 
 int /*<<< orphan*/  svn_io_file_del_on_pool_cleanup ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,char const*,scalar_t__,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC10(void *baton,
                          const char *data,
                          apr_size_t *len)
{
  svn_ra_serf__request_body_t *b = baton;

  if (!b->scratch_pool)
    b->scratch_pool = FUNC9(b->result_pool);

  if (b->file)
    {
      FUNC0(FUNC6(b->file, data, *len, NULL,
                                     b->scratch_pool));
      FUNC8(b->scratch_pool);

      b->total_bytes += *len;
    }
  else if (*len + b->total_bytes > b->in_memory_size)
    {
      FUNC0(FUNC7(&b->file, NULL, NULL,
                                       svn_io_file_del_on_pool_cleanup,
                                       b->result_pool, b->scratch_pool));

      if (b->total_bytes)
        {
          const char *all = FUNC1(b, b->scratch_pool);

          FUNC0(FUNC6(b->file, all, b->total_bytes,
                                         NULL, b->scratch_pool));
        }

      FUNC0(FUNC6(b->file, data, *len, NULL,
                                     b->scratch_pool));
      b->total_bytes += *len;
    }
  else
    {
      if (!b->alloc)
        b->alloc = FUNC4(b->scratch_pool,
                                                serf_free_no_error, NULL);

      if (!b->collect_bucket)
        b->collect_bucket = FUNC3(b->alloc);

      FUNC2(b->collect_bucket,
                                   FUNC5(data, *len,
                                                                  b->alloc));

      b->total_bytes += *len;
    }

  return SVN_NO_ERROR;
}