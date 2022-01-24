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
typedef  int apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int) ; 
 char* FUNC2 (int /*<<< orphan*/ *,char const*,int) ; 
 char* FUNC3 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char const*) ; 
 int FUNC6 (char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,int) ; 
 int FUNC8 (char const*) ; 
 scalar_t__ FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (char const*,int /*<<< orphan*/ *) ; 

char *FUNC11(const char *base,
                      const char *component,
                      apr_pool_t *pool)
{
  apr_size_t blen = FUNC8(base);
  apr_size_t clen = FUNC8(component);
  char *dirent;
  int add_separator;

  FUNC4(FUNC10(base, pool));
  FUNC4(FUNC10(component, pool));

  /* If the component is absolute, then return it.  */
  if (FUNC9(component))
    return FUNC2(pool, component, clen + 1);

  /* If either is empty return the other */
  if (FUNC0(base))
    return FUNC2(pool, component, clen + 1);
  if (FUNC0(component))
    return FUNC2(pool, base, blen + 1);

#ifdef SVN_USE_DOS_PATHS
  if (component[0] == '/')
    {
      /* '/' is drive relative on Windows, not absolute like on Posix */
      if (dirent_is_rooted(base))
        {
          /* Join component without '/' to root-of(base) */
          blen = dirent_root_length(base, blen);
          component++;
          clen--;

          if (blen == 2 && base[1] == ':') /* "C:" case */
            {
              char *root = apr_pmemdup(pool, base, 3);
              root[2] = '/'; /* We don't need the final '\0' */

              base = root;
              blen = 3;
            }

          if (clen == 0)
            return apr_pstrndup(pool, base, blen);
        }
      else
        return apr_pmemdup(pool, component, clen + 1);
    }
  else if (dirent_is_rooted(component))
    return apr_pmemdup(pool, component, clen + 1);
#endif /* SVN_USE_DOS_PATHS */

  /* if last character of base is already a separator, don't add a '/' */
  add_separator = 1;
  if (base[blen - 1] == '/'
#ifdef SVN_USE_DOS_PATHS
       || base[blen - 1] == ':'
#endif
        )
          add_separator = 0;

  /* Construct the new, combined dirent. */
  dirent = FUNC1(pool, blen + add_separator + clen + 1);
  FUNC7(dirent, base, blen);
  if (add_separator)
    dirent[blen] = '/';
  FUNC7(dirent + blen + add_separator, component, clen + 1);

  return dirent;
}