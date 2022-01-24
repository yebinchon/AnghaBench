#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ valid; } ;
typedef  TYPE_1__ xlate_handle_node_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 char const* SVN_UTF_NTOU_XLATE_HANDLE ; 
 char const* SVN_UTF_UTON_XLATE_HANDLE ; 
 int /*<<< orphan*/  FUNC1 (void**,char const*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__**,char const*,char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xlat_ntou_static_handle ; 
 int /*<<< orphan*/  xlat_uton_static_handle ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_1__**,char const*,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ xlate_handle_hash ; 
 int /*<<< orphan*/  xlate_handle_mutex ; 

__attribute__((used)) static svn_error_t *
FUNC5(xlate_handle_node_t **ret,
                      const char *topage, const char *frompage,
                      const char *userdata_key, apr_pool_t *pool)
{
  xlate_handle_node_t *old_node = NULL;

  /* If we already have a handle, just return it. */
  if (userdata_key)
    {
      if (xlate_handle_hash)
        {
          /* 1st level: global, static items */
          if (userdata_key == SVN_UTF_NTOU_XLATE_HANDLE)
            old_node = FUNC2(&xlat_ntou_static_handle, NULL);
          else if (userdata_key == SVN_UTF_UTON_XLATE_HANDLE)
            old_node = FUNC2(&xlat_uton_static_handle, NULL);

          if (old_node && old_node->valid)
            {
              *ret = old_node;
              return SVN_NO_ERROR;
            }
        }
      else
        {
          void *p;
          /* We fall back on a per-pool cache instead. */
          FUNC1(&p, userdata_key, pool);
          old_node = p;
          /* Ensure that the handle is still valid. */
          if (old_node && old_node->valid)
            {
              *ret = old_node;
              return SVN_NO_ERROR;
            }

          return FUNC4(ret, topage, frompage, pool);
        }
    }

  FUNC0(xlate_handle_mutex,
                       FUNC3(ret,
                                                      topage,
                                                      frompage,
                                                      userdata_key,
                                                      pool));

  return SVN_NO_ERROR;
}