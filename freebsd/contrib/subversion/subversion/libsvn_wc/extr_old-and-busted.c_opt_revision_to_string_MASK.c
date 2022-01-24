#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  number; } ;
struct TYPE_5__ {int kind; TYPE_1__ value; } ;
typedef  TYPE_2__ svn_opt_revision_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  SVN_ERR_INCORRECT_PARAMS ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char const*) ; 
#define  svn_opt_revision_head 129 
#define  svn_opt_revision_number 128 

__attribute__((used)) static svn_error_t *
FUNC4(const char **str,
                       const char *path,
                       const svn_opt_revision_t *rev,
                       apr_pool_t *pool)
{
  switch (rev->kind)
    {
    case svn_opt_revision_head:
      *str = FUNC2(pool, "HEAD", 4);
      break;
    case svn_opt_revision_number:
      *str = FUNC1(pool, rev->value.number);
      break;
    default:
      return FUNC3
        (SVN_ERR_INCORRECT_PARAMS, NULL,
         FUNC0("Illegal file external revision kind %d for path '%s'"),
         rev->kind, path);
      break;
    }

  return SVN_NO_ERROR;
}