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
typedef  int /*<<< orphan*/  svn_stringbuf_t ;
struct TYPE_4__ {char** (* get_schemes ) (int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* get_description ) (int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* get_version ) () ;} ;
typedef  TYPE_1__ svn_ra__vtable_t ;
typedef  int /*<<< orphan*/  (* svn_ra__init_func_t ) (int /*<<< orphan*/ ,TYPE_1__ const**,int /*<<< orphan*/ *) ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct ra_lib_defn {int /*<<< orphan*/ * ra_name; int /*<<< orphan*/  (* initfunc ) (int /*<<< orphan*/ ,TYPE_1__ const**,int /*<<< orphan*/ *) ;} ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,char*,char const* const,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  (*) (int /*<<< orphan*/ ,TYPE_1__ const**,int /*<<< orphan*/ *),int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct ra_lib_defn* ra_libraries ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 char** FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*) ; 

svn_error_t *
FUNC13(svn_stringbuf_t *output,
                     apr_pool_t *pool)
{
  const struct ra_lib_defn *defn;
  const char * const *schemes;
  svn_ra__init_func_t initfunc;
  const svn_ra__vtable_t *vtable;
  apr_pool_t *iterpool = FUNC9(pool);

  for (defn = ra_libraries; defn->ra_name != NULL; ++defn)
    {
      char *line;

      FUNC8(iterpool);

      initfunc = defn->initfunc;
      if (! initfunc)
        FUNC0(FUNC4(initfunc, NULL, defn->ra_name,
                               iterpool));

      if (initfunc)
        {
          FUNC0(initfunc(FUNC11(), &vtable, iterpool));

          FUNC0(FUNC3(vtable->get_version(), defn->ra_name));

          /* Note: if you change the formatting of the description,
             bear in mind that ra_svn's description has multiple lines when
             built with SASL. */
          line = FUNC2(iterpool, "* ra_%s : %s\n",
                              defn->ra_name,
                              vtable->get_description(iterpool));
          FUNC12(output, line);

          for (schemes = vtable->get_schemes(iterpool); *schemes != NULL;
               ++schemes)
            {
              line = FUNC2(iterpool, FUNC1("  - handles '%s' scheme\n"),
                                  *schemes);
              FUNC12(output, line);
            }
        }
    }

  FUNC10(iterpool);

  return SVN_NO_ERROR;
}