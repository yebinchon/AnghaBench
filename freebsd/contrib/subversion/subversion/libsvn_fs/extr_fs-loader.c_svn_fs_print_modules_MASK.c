#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_stringbuf_t ;
struct TYPE_8__ {scalar_t__ apr_err; } ;
typedef  TYPE_1__ svn_error_t ;
struct fs_type_defn {struct fs_type_defn* next; int /*<<< orphan*/  fsap_name; } ;
struct TYPE_9__ {int /*<<< orphan*/  (* get_description ) () ;} ;
typedef  TYPE_2__ fs_library_vtable_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 scalar_t__ SVN_ERR_FS_UNKNOWN_FS_TYPE ; 
 TYPE_1__* SVN_NO_ERROR ; 
 char* FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct fs_type_defn* fs_modules ; 
 TYPE_1__* FUNC1 (TYPE_2__**,struct fs_type_defn*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 

svn_error_t *
FUNC8(svn_stringbuf_t *output,
                     apr_pool_t *pool)
{
  struct fs_type_defn *defn = fs_modules;
  fs_library_vtable_t *vtable;
  apr_pool_t *iterpool = FUNC5(pool);

  while (defn)
    {
      char *line;
      svn_error_t *err;

      FUNC4(iterpool);

      err = FUNC1(&vtable, defn, iterpool);
      if (err)
        {
          if (err->apr_err == SVN_ERR_FS_UNKNOWN_FS_TYPE)
            {
              FUNC3(err);
              defn = defn->next;
              continue;
            }
          else
            return err;
        }

      line = FUNC0(iterpool, "* fs_%s : %s\n",
                          defn->fsap_name, vtable->get_description());
      FUNC7(output, line);
      defn = defn->next;
    }

  FUNC6(iterpool);

  return SVN_NO_ERROR;
}