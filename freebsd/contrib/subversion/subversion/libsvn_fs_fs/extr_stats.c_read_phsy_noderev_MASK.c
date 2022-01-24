#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ len; } ;
typedef  TYPE_1__ svn_stringbuf_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct TYPE_13__ {TYPE_10__* rev_file; scalar_t__ offset; } ;
typedef  TYPE_2__ revision_info_t ;
typedef  int /*<<< orphan*/  query_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_off_t ;
struct TYPE_11__ {int /*<<< orphan*/  stream; int /*<<< orphan*/  file; } ;

/* Variables and functions */
 int /*<<< orphan*/  APR_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_10__*) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_1__**,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,TYPE_1__*) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC10(svn_stringbuf_t **noderev,
                  query_t *query,
                  apr_off_t offset,
                  revision_info_t *revision_info,
                  apr_pool_t *result_pool,
                  apr_pool_t *scratch_pool)
{
  svn_stringbuf_t *noderev_str = FUNC9(result_pool);
  svn_stringbuf_t *line;
  svn_boolean_t eof;

  apr_pool_t *iterpool = FUNC4(scratch_pool);

  /* Navigate the file stream to the start of noderev. */
  FUNC1(revision_info->rev_file);

  offset += revision_info->offset;
  FUNC0(FUNC2(revision_info->rev_file->file, APR_SET,
                           &offset, scratch_pool));

  /* Read it (terminated by an empty line) */
  do
    {
      FUNC3(iterpool);

      FUNC0(FUNC6(revision_info->rev_file->stream, &line,
                                  "\n", &eof, iterpool));
      FUNC8(noderev_str, line);
      FUNC7(noderev_str, '\n');
    }
  while (line->len > 0 && !eof);

  /* Return the result. */
  *noderev = noderev_str;

  FUNC5(iterpool);

  return SVN_NO_ERROR;
}