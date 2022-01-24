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
struct base85_baton_t {void* end_pos; void* next_pos; int /*<<< orphan*/  iterpool; int /*<<< orphan*/ * file; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  void* apr_off_t ;
typedef  int /*<<< orphan*/  apr_file_t ;

/* Variables and functions */
 struct base85_baton_t* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  close_handler_base85 ; 
 int /*<<< orphan*/  read_handler_base85 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (struct base85_baton_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_stream_t *
FUNC5(apr_file_t *file,
                       apr_off_t start_pos,
                       apr_off_t end_pos,
                       apr_pool_t *result_pool)
{
  struct base85_baton_t *b85b = FUNC0(result_pool, sizeof(*b85b));
  svn_stream_t *base85s = FUNC2(b85b, result_pool);

  b85b->file = file;
  b85b->iterpool = FUNC1(result_pool);
  b85b->next_pos = start_pos;
  b85b->end_pos = end_pos;

  FUNC4(base85s, NULL /* only full read support */,
                       read_handler_base85);
  FUNC3(base85s, close_handler_base85);
  return base85s;
}