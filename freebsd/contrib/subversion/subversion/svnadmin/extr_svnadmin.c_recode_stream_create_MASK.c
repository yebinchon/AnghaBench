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
struct recode_write_baton {int /*<<< orphan*/ * out; int /*<<< orphan*/  pool; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 struct recode_write_baton* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  recode_write ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (struct recode_write_baton*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_stream_t *
FUNC4(FILE *std_stream, apr_pool_t *pool)
{
  struct recode_write_baton *std_stream_rwb =
    FUNC0(pool, sizeof(struct recode_write_baton));

  svn_stream_t *rw_stream = FUNC2(std_stream_rwb, pool);
  std_stream_rwb->pool = FUNC1(pool);
  std_stream_rwb->out = std_stream;
  FUNC3(rw_stream, recode_write);
  return rw_stream;
}