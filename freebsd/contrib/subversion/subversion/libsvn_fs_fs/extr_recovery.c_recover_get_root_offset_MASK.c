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
typedef  int /*<<< orphan*/  svn_stringbuf_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
struct TYPE_3__ {int /*<<< orphan*/  file; int /*<<< orphan*/  is_packed; } ;
typedef  TYPE_1__ svn_fs_fs__revision_file_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  buffer ;
typedef  int apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int apr_off_t ;

/* Variables and functions */
 int /*<<< orphan*/  APR_END ; 
 int /*<<< orphan*/  APR_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC6(apr_off_t *root_offset,
                        svn_revnum_t rev,
                        svn_fs_fs__revision_file_t *rev_file,
                        apr_pool_t *pool)
{
  char buffer[64];
  svn_stringbuf_t *trailer;
  apr_off_t start;
  apr_off_t end;
  apr_size_t len;

  FUNC1(!rev_file->is_packed);

  /* We will assume that the last line containing the two offsets (to the root
     node-id and to the changed path information) will never be longer than 64
     characters. */
  end = 0;
  FUNC0(FUNC4(rev_file->file, APR_END, &end, pool));

  if (end < sizeof(buffer))
    {
      len = (apr_size_t)end;
      start = 0;
    }
  else
    {
      len = sizeof(buffer);
      start = end - sizeof(buffer);
    }

  FUNC0(FUNC4(rev_file->file, APR_SET, &start, pool));
  FUNC0(FUNC3(rev_file->file, buffer, len,
                                 NULL, NULL, pool));

  trailer = FUNC5(buffer, len, pool);
  FUNC0(FUNC2(root_offset, NULL, trailer, rev));

  return SVN_NO_ERROR;
}