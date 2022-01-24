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
struct TYPE_4__ {scalar_t__ current_line; int /*<<< orphan*/  write_baton; int /*<<< orphan*/  (* write ) (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;int /*<<< orphan*/  eol_str; int /*<<< orphan*/  eof; } ;
typedef  TYPE_1__ target_content_t ;
typedef  scalar_t__ svn_linenum_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_VA_NULL ; 
 char* FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC8(target_content_t *content, svn_linenum_t line,
                     apr_pool_t *pool)
{
  apr_pool_t *iterpool;

  iterpool = FUNC6(pool);
  while ((content->current_line < line || line == 0) && ! content->eof)
    {
      const char *target_line;
      apr_size_t len;

      FUNC5(iterpool);

      FUNC0(FUNC2(content, &target_line, iterpool, iterpool));
      if (! content->eof)
        target_line = FUNC1(iterpool, target_line, content->eol_str,
                                  SVN_VA_NULL);
      len = FUNC3(target_line);
      FUNC0(content->write(content->write_baton, target_line,
                             len, iterpool));
    }
  FUNC7(iterpool);

  return SVN_NO_ERROR;
}