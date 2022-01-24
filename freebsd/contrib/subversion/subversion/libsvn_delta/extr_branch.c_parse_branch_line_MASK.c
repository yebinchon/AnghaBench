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
struct TYPE_3__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ svn_stringbuf_t ;
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,char*,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__**,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC4(char *bid_p,
                  int *root_eid_p,
                  int *num_eids_p,
                  svn_stream_t *stream,
                  apr_pool_t *result_pool,
                  apr_pool_t *scratch_pool)
{
  svn_stringbuf_t *line;
  svn_boolean_t eof;
  int n;

  /* Read a line */
  FUNC0(FUNC3(stream, &line, "\n", &eof, scratch_pool));
  FUNC1(!eof);

  n = FUNC2(line->data, "%s root-eid %d num-eids %d",
             bid_p, root_eid_p, num_eids_p);
  FUNC1(n == 3);

  return SVN_NO_ERROR;
}