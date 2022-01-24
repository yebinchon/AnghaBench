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
typedef  int /*<<< orphan*/  svn_fs_x__change_t ;
typedef  int /*<<< orphan*/  (* svn_fs_x__change_receiver_t ) (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC5(svn_stream_t *stream,
                                     svn_fs_x__change_receiver_t
                                       change_receiver,
                                     void *change_receiver_baton,
                                     apr_pool_t *scratch_pool)
{
  svn_fs_x__change_t *change;
  apr_pool_t *iterpool;

  iterpool = FUNC3(scratch_pool);
  do
    {
      FUNC2(iterpool);

      FUNC0(FUNC1(&change, stream, iterpool, iterpool));
      if (change)
        FUNC0(change_receiver(change_receiver_baton, change, iterpool));
    }
  while (change);
  FUNC4(iterpool);

  return SVN_NO_ERROR;
}