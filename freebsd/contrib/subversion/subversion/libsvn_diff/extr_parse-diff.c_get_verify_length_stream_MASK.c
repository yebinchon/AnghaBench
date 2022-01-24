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
typedef  int /*<<< orphan*/  svn_filesize_t ;
struct length_verify_baton_t {int /*<<< orphan*/  remaining; int /*<<< orphan*/ * inner; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 struct length_verify_baton_t* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  close_handler_length_verify ; 
 int /*<<< orphan*/  read_handler_length_verify ; 
 int /*<<< orphan*/ * FUNC1 (struct length_verify_baton_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_stream_t *
FUNC4(svn_stream_t *inner,
                         svn_filesize_t expected_size,
                         apr_pool_t *result_pool)
{
  struct length_verify_baton_t *lvb = FUNC0(result_pool, sizeof(*lvb));
  svn_stream_t *len_stream = FUNC1(lvb, result_pool);

  lvb->inner = inner;
  lvb->remaining = expected_size;

  FUNC3(len_stream, NULL /* only full read support */,
                       read_handler_length_verify);
  FUNC2(len_stream, close_handler_length_verify);

  return len_stream;
}