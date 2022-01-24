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
struct TYPE_3__ {char* data; } ;
typedef  TYPE_1__ svn_stringbuf_t ;
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 char* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (char*,char*,int*,char*,int*,int*) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__**,char*,int*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC6(int *eid_p,
                   svn_boolean_t *is_subbranch_p,
                   int *parent_eid_p,
                   const char **name_p,
                   svn_stream_t *stream,
                   apr_pool_t *result_pool,
                   apr_pool_t *scratch_pool)
{
  svn_stringbuf_t *line;
  svn_boolean_t eof;
  char kind[10];
  int n;
  int offset;

  /* Read a line */
  FUNC0(FUNC5(stream, &line, "\n", &eof, scratch_pool));
  FUNC1(!eof);

  n = FUNC3(line->data, "e%d: %9s %d%n",
             eid_p,
             kind, parent_eid_p, &offset);
  FUNC1(n >= 3);  /* C std is unclear on whether '%n' counts */
  FUNC1(line->data[offset] == ' ');

  *name_p = FUNC2(result_pool, line->data + offset + 1);
  *is_subbranch_p = (FUNC4(kind, "subbranch") == 0);

  if (FUNC4(*name_p, "(null)") == 0)
    *name_p = NULL;
  else if (FUNC4(*name_p, ".") == 0)
    *name_p = "";

  return SVN_NO_ERROR;
}