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
typedef  int /*<<< orphan*/  svn_stringbuf_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct baton_apr {int /*<<< orphan*/  file; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC3(void *baton,
                     svn_stringbuf_t **stringbuf,
                     const char *eol,
                     svn_boolean_t *eof,
                     apr_pool_t *pool)
{
  struct baton_apr *btn = baton;

  if (eol[0] == '\n' && eol[1] == '\0')
    {
      /* Optimize the common case when we're looking for an LF ("\n")
         end-of-line sequence by using apr_file_gets(). */
      return FUNC2(FUNC1(btn->file, stringbuf,
                                             eof, pool));
    }
  else
    {
      return FUNC2(FUNC0(btn->file, stringbuf,
                                                  eol, eof, pool));
    }
}