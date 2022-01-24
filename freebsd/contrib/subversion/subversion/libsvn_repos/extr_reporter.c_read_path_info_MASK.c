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
typedef  int /*<<< orphan*/  svn_spillbuf_reader_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_4__ {int start_empty; int /*<<< orphan*/ * pool; int /*<<< orphan*/ * lock_token; int /*<<< orphan*/  depth; int /*<<< orphan*/ * path; int /*<<< orphan*/  rev; int /*<<< orphan*/ * link_path; } ;
typedef  TYPE_1__ path_info_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_depth_infinity ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC6(path_info_t **pi,
               svn_spillbuf_reader_t *reader,
               apr_pool_t *pool)
{
  char c;

  FUNC0(FUNC5(&c, reader, pool));
  if (c == '-')
    {
      *pi = NULL;
      return SVN_NO_ERROR;
    }

  *pi = FUNC1(pool, sizeof(**pi));
  FUNC0(FUNC4(&(*pi)->path, reader, pool));
  FUNC0(FUNC5(&c, reader, pool));
  if (c == '+')
    FUNC0(FUNC4(&(*pi)->link_path, reader, pool));
  else
    (*pi)->link_path = NULL;
  FUNC0(FUNC3(&(*pi)->rev, reader, pool));
  FUNC0(FUNC5(&c, reader, pool));
  if (c == '+')
    FUNC0(FUNC2(&((*pi)->depth), reader, (*pi)->path, pool));
  else
    (*pi)->depth = svn_depth_infinity;
  FUNC0(FUNC5(&c, reader, pool));
  (*pi)->start_empty = (c == '+');
  FUNC0(FUNC5(&c, reader, pool));
  if (c == '+')
    FUNC0(FUNC4(&(*pi)->lock_token, reader, pool));
  else
    (*pi)->lock_token = NULL;
  (*pi)->pool = pool;
  return SVN_NO_ERROR;
}