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
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_RA_ILLEGAL_URL ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_VA_NULL ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int) ; 
 char* FUNC3 (int /*<<< orphan*/ *,char*,char const*,char*,int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ *,char const*,int) ; 
 char FUNC5 (char) ; 
 char* FUNC6 (char const*,char) ; 
 scalar_t__ FUNC7 (char const*,char*) ; 
 scalar_t__ FUNC8 (char const*,char*,int) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 char* FUNC10 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char const*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC12(const char **dirent,
                                 const char *url,
                                 apr_pool_t *pool)
{
  const char *hostname, *path;

  FUNC0(FUNC11(url, pool));

  /* Verify that the URL is well-formed (loosely) */

  /* First, check for the "file://" prefix. */
  if (FUNC8(url, "file://", 7) != 0)
    return FUNC9(SVN_ERR_RA_ILLEGAL_URL, NULL,
                             FUNC1("Local URL '%s' does not contain 'file://' "
                               "prefix"), url);

  /* Find the HOSTNAME portion and the PATH portion of the URL.  The host
     name is between the "file://" prefix and the next occurrence of '/'.  We
     are considering everything from that '/' until the end of the URL to be
     the absolute path portion of the URL.
     If we got just "file://", treat it the same as "file:///". */
  hostname = url + 7;
  path = FUNC6(hostname, '/');
  if (path)
    hostname = FUNC4(pool, hostname, path - hostname);
  else
    path = "/";

  /* URI-decode HOSTNAME, and set it to NULL if it is "" or "localhost". */
  if (*hostname == '\0')
    hostname = NULL;
  else
    {
      hostname = FUNC10(hostname, pool);
      if (FUNC7(hostname, "localhost") == 0)
        hostname = NULL;
    }

  /* Duplicate the URL, starting at the top of the path.
     At the same time, we URI-decode the path. */
#ifdef SVN_USE_DOS_PATHS
  /* On Windows, we'll typically have to skip the leading / if the
     path starts with a drive letter.  Like most Web browsers, We
     support two variants of this scheme:

         file:///X:/path    and
         file:///X|/path

    Note that, at least on WinNT and above,  file:////./X:/path  will
    also work, so we must make sure the transformation doesn't break
    that, and  file:///path  (that looks within the current drive
    only) should also keep working.
    If we got a non-empty hostname other than localhost, we convert this
    into an UNC path.  In this case, we obviously don't strip the slash
    even if the path looks like it starts with a drive letter.
  */
  {
    static const char valid_drive_letters[] =
      "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
    /* Casting away const! */
    char *dup_path = (char *)svn_path_uri_decode(path, pool);

    /* This check assumes ':' and '|' are already decoded! */
    if (!hostname && dup_path[1] && strchr(valid_drive_letters, dup_path[1])
        && (dup_path[2] == ':' || dup_path[2] == '|'))
      {
        /* Skip the leading slash. */
        ++dup_path;

        if (dup_path[1] == '|')
          dup_path[1] = ':';

        if (dup_path[2] == '/' || dup_path[2] == '\\' || dup_path[2] == '\0')
          {
            /* Dirents have upper case drive letters in their canonical form */
            dup_path[0] = canonicalize_to_upper(dup_path[0]);

            if (dup_path[2] == '\0')
              {
                /* A valid dirent for the driveroot must be like "C:/" instead of
                   just "C:" or svn_dirent_join() will use the current directory
                   on the drive instead */
                char *new_path = apr_pcalloc(pool, 4);
                new_path[0] = dup_path[0];
                new_path[1] = ':';
                new_path[2] = '/';
                new_path[3] = '\0';
                dup_path = new_path;
              }
            else
              dup_path[2] = '/'; /* Ensure not relative for '\' after drive! */
          }
      }
    if (hostname)
      {
        if (dup_path[0] == '/' && dup_path[1] == '\0')
          return svn_error_createf(SVN_ERR_RA_ILLEGAL_URL, NULL,
                                   _("Local URL '%s' contains only a hostname, "
                                     "no path"), url);

        /* We still know that the path starts with a slash. */
        *dirent = apr_pstrcat(pool, "//", hostname, dup_path, SVN_VA_NULL);
      }
    else
      *dirent = dup_path;
  }
#else /* !SVN_USE_DOS_PATHS */
  /* Currently, the only hostnames we are allowing on non-Win32 platforms
     are the empty string and 'localhost'. */
  if (hostname)
    return FUNC9(SVN_ERR_RA_ILLEGAL_URL, NULL,
                             FUNC1("Local URL '%s' contains unsupported hostname"),
                             url);

  *dirent = FUNC10(path, pool);
#endif /* SVN_USE_DOS_PATHS */
  return SVN_NO_ERROR;
}