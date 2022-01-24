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
struct TYPE_4__ {int /*<<< orphan*/  (* get_version ) () ;} ;
typedef  TYPE_1__ svn_ra_plugin_t ;
typedef  int /*<<< orphan*/  (* svn_ra_init_func_t ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct ra_lib_defn {int /*<<< orphan*/ * ra_name; int /*<<< orphan*/  (* compat_initfunc ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;int /*<<< orphan*/  schemes; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_RA_ILLEGAL_URL ; 
 int /*<<< orphan*/  SVN_RA_ABI_VERSION ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 char* FUNC4 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *),int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct ra_lib_defn* ra_libraries ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ *,char const*) ; 

svn_error_t *
FUNC9(svn_ra_plugin_t **library,
                      void *ra_baton,
                      const char *url,
                      apr_pool_t *pool)
{
  const struct ra_lib_defn *defn;
  apr_pool_t *load_pool = ra_baton;
  apr_hash_t *ht = FUNC2(pool);

  /* Figure out which RA library key matches URL. */
  for (defn = ra_libraries; defn->ra_name != NULL; ++defn)
    {
      const char *scheme;
      if ((scheme = FUNC4(defn->schemes, url)))
        {
          svn_ra_init_func_t compat_initfunc = defn->compat_initfunc;

          if (! compat_initfunc)
            {
              FUNC0(FUNC5
                      (NULL, compat_initfunc, defn->ra_name, load_pool));
            }
          if (! compat_initfunc)
            {
              continue;
            }

          FUNC0(compat_initfunc(SVN_RA_ABI_VERSION, load_pool, ht));

          *library = FUNC8(ht, scheme);

          /* The library may support just a subset of the schemes listed,
             so we have to check here too. */
          if (! *library)
            break;

          return FUNC3((*library)->get_version(), scheme);
        }
    }

  /* Couldn't find a match... */
  *library = NULL;
  return FUNC7(SVN_ERR_RA_ILLEGAL_URL, NULL,
                           FUNC1("Unrecognized URL scheme '%s'"), url);
}