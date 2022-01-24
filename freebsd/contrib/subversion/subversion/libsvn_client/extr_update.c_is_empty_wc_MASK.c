#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  apr_err; } ;
typedef  TYPE_1__ svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_11__ {char* name; } ;
typedef  TYPE_2__ apr_finfo_t ;
typedef  int /*<<< orphan*/  apr_dir_t ;

/* Variables and functions */
 int /*<<< orphan*/  APR_FINFO_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 TYPE_1__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC1 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC7(svn_boolean_t *clean_checkout,
            const char *local_abspath,
            const char *anchor_abspath,
            apr_pool_t *pool)
{
  apr_dir_t *dir;
  apr_finfo_t finfo;
  svn_error_t *err;

  /* "clean" until found dirty */
  *clean_checkout = TRUE;

  /* open directory. If it does not exist, yet, a clean one will
     be created by the caller. */
  err = FUNC4(&dir, local_abspath, pool);
  if (err)
    {
      if (! FUNC0(err->apr_err))
        *clean_checkout = FALSE;

      FUNC2(err);
      return SVN_NO_ERROR;
    }

  for (err = FUNC5(&finfo, APR_FINFO_NAME, dir, pool);
       err == SVN_NO_ERROR;
       err = FUNC5(&finfo, APR_FINFO_NAME, dir, pool))
    {
      /* Ignore entries for this dir and its parent, robustly.
         (APR promises that they'll come first, so technically
         this guard could be moved outside the loop.  But Ryan Bloom
         says he doesn't believe it, and I believe him. */
      if (! (finfo.name[0] == '.'
             && (finfo.name[1] == '\0'
                 || (finfo.name[1] == '.' && finfo.name[2] == '\0'))))
        {
          if (   ! FUNC6(finfo.name, pool)
              || FUNC1(local_abspath, anchor_abspath) != 0)
            {
              *clean_checkout = FALSE;
              break;
            }
        }
    }

  if (err)
    {
      if (! FUNC0(err->apr_err))
        {
          /* There was some issue reading the folder content.
           * We better disable optimizations in that case. */
          *clean_checkout = FALSE;
        }

      FUNC2(err);
    }

  return FUNC3(dir);
}