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
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 char* SVN_DAV_PROP_NS_CUSTOM ; 
 char* SVN_DAV_PROP_NS_DAV ; 
 char* SVN_DAV_PROP_NS_SVN ; 
 char* SVN_DAV__CREATIONDATE ; 
 char* SVN_DAV__VERSION_NAME ; 
 char const* SVN_PROP_ENTRY_COMMITTED_DATE ; 
 char const* SVN_PROP_ENTRY_COMMITTED_REV ; 
 char const* SVN_PROP_ENTRY_LAST_AUTHOR ; 
 char const* SVN_PROP_ENTRY_LOCK_TOKEN ; 
 char const* SVN_PROP_ENTRY_UUID ; 
 char const* SVN_PROP_PREFIX ; 
 char const* SVN_RA_SERF__WC_CHECKED_IN_URL ; 
 int /*<<< orphan*/  SVN_VA_NULL ; 
 char const* FUNC0 (int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ ) ; 
 char const* FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC2 (char const*,char const*) ; 

const char *
FUNC3(const char *ns,
                                   const char *name,
                                   apr_pool_t *result_pool)
{
  if (*ns == '\0' || FUNC2(ns, SVN_DAV_PROP_NS_CUSTOM) == 0)
    return FUNC1(result_pool, name);

  if (FUNC2(ns, SVN_DAV_PROP_NS_SVN) == 0)
    return FUNC0(result_pool, SVN_PROP_PREFIX, name, SVN_VA_NULL);

  if (FUNC2(ns, SVN_PROP_PREFIX) == 0)
    return FUNC0(result_pool, SVN_PROP_PREFIX, name, SVN_VA_NULL);

  if (FUNC2(name, SVN_DAV__VERSION_NAME) == 0)
    return SVN_PROP_ENTRY_COMMITTED_REV;

  if (FUNC2(name, SVN_DAV__CREATIONDATE) == 0)
    return SVN_PROP_ENTRY_COMMITTED_DATE;

  if (FUNC2(name, "creator-displayname") == 0)
    return SVN_PROP_ENTRY_LAST_AUTHOR;

  if (FUNC2(name, "repository-uuid") == 0)
    return SVN_PROP_ENTRY_UUID;

  if (FUNC2(name, "lock-token") == 0)
    return SVN_PROP_ENTRY_LOCK_TOKEN;

  if (FUNC2(name, "checked-in") == 0)
    return SVN_RA_SERF__WC_CHECKED_IN_URL;

  if (FUNC2(ns, "DAV:") == 0 || FUNC2(ns, SVN_DAV_PROP_NS_DAV) == 0)
    {
      /* Here DAV: properties not yet converted to svn: properties should be
         ignored. */
      return NULL;
    }

  /* An unknown namespace, must be a custom property. */
  return FUNC0(result_pool, ns, name, SVN_VA_NULL);
}