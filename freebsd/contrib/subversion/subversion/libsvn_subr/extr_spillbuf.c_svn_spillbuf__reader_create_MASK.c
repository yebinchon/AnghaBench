#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  buf; } ;
typedef  TYPE_1__ svn_spillbuf_reader_t ;
typedef  int /*<<< orphan*/  apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

svn_spillbuf_reader_t *
FUNC2(apr_size_t blocksize,
                            apr_size_t maxsize,
                            apr_pool_t *result_pool)
{
  svn_spillbuf_reader_t *sbr = FUNC0(result_pool, sizeof(*sbr));
  sbr->buf = FUNC1(blocksize, maxsize, result_pool);
  return sbr;
}