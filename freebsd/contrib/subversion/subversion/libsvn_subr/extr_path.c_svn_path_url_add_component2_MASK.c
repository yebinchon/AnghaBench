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
 char const* FUNC0 (char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_uri__char_validity ; 
 char* FUNC1 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

const char *
FUNC2(const char *url,
                            const char *component,
                            apr_pool_t *pool)
{
  /* = svn_path_uri_encode() but without always copying */
  component = FUNC1(component, svn_uri__char_validity, pool);

  return FUNC0(url, component, pool);
}