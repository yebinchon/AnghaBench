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
typedef  int /*<<< orphan*/  svn_node_kind_t ;
struct TYPE_10__ {int /*<<< orphan*/  apr_err; } ;
typedef  TYPE_1__ svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_11__ {int /*<<< orphan*/  protection; } ;
typedef  TYPE_2__ apr_finfo_t ;

/* Variables and functions */
 int /*<<< orphan*/  APR_FINFO_PROT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 TYPE_1__* FUNC4 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 TYPE_1__* FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char const*,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC10(const char *src,
                  const char *dst,
                  apr_pool_t *pool)
{
  /* ### On Windows or OS/2, apr_file_perms_set always returns APR_ENOTIMPL,
         and the path passed to apr_file_perms_set must be encoded
         in the platform-specific path encoding; not necessary UTF-8.
         We need a platform-specific implementation to get the
         permissions right. */

#if !defined(WIN32) && !defined(__OS2__)
  {
    apr_finfo_t finfo;
    svn_node_kind_t kind;
    svn_boolean_t is_special;
    svn_error_t *err;

    /* If DST is a symlink, don't bother copying permissions. */
    FUNC2(FUNC8(dst, &kind, &is_special, pool));
    if (is_special)
      return SVN_NO_ERROR;

    FUNC2(FUNC9(&finfo, src, APR_FINFO_PROT, pool));
    err = FUNC4(dst, finfo.protection, pool);
    if (err)
      {
        /* We shouldn't be able to get APR_INCOMPLETE or APR_ENOTIMPL
           here under normal circumstances, because the perms themselves
           came from a call to apr_file_info_get(), and we already know
           this is the non-Win32 case.  But if it does happen, it's not
           an error. */
        if (FUNC1(err->apr_err) ||
            FUNC0(err->apr_err))
          FUNC6(err);
        else
          {
            return FUNC7(
                     err, FUNC3("Can't set permissions on '%s'"),
                     FUNC5(dst, pool));
          }
      }
  }
#endif /* !WIN32 && !__OS2__ */

  return SVN_NO_ERROR;
}