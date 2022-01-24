#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  block_size; } ;
typedef  TYPE_2__ svn_fs_x__data_t ;
typedef  int svn_filesize_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_7__ {int /*<<< orphan*/  cancel_baton; int /*<<< orphan*/  (* cancel_func ) (int /*<<< orphan*/ ) ;TYPE_1__* fs; } ;
typedef  TYPE_3__ pack_context_t ;
typedef  int apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_file_t ;
struct TYPE_5__ {TYPE_2__* fsap_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 char* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC8(pack_context_t *context,
               apr_file_t *dest,
               apr_file_t *source,
               svn_filesize_t size,
               apr_pool_t *scratch_pool)
{
  /* most non-representation items will be small.  Minimize the buffer
   * and infrastructure overhead in that case. */
  enum { STACK_BUFFER_SIZE = 1024 };

  if (size < STACK_BUFFER_SIZE)
    {
      /* copy small data using a fixed-size buffer on stack */
      char buffer[STACK_BUFFER_SIZE];
      FUNC1(FUNC4(source, buffer, (apr_size_t)size,
                                     NULL, NULL, scratch_pool));
      FUNC1(FUNC5(dest, buffer, (apr_size_t)size,
                                     NULL, scratch_pool));
    }
  else
    {
      /* use streaming copies for larger data blocks.  That may require
       * the allocation of larger buffers and we should make sure that
       * this extra memory is released asap. */
      svn_fs_x__data_t *ffd = context->fs->fsap_data;
      apr_pool_t *copypool = FUNC6(scratch_pool);
      char *buffer = FUNC2(copypool, ffd->block_size);

      while (size)
        {
          apr_size_t to_copy = (apr_size_t)(FUNC0(size, ffd->block_size));
          if (context->cancel_func)
            FUNC1(context->cancel_func(context->cancel_baton));

          FUNC1(FUNC4(source, buffer, to_copy,
                                         NULL, NULL, scratch_pool));
          FUNC1(FUNC5(dest, buffer, to_copy,
                                         NULL, scratch_pool));

          size -= to_copy;
        }

      FUNC7(copypool);
    }

  return SVN_NO_ERROR;
}