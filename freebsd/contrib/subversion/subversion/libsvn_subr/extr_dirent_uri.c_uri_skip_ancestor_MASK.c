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
typedef  size_t apr_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static const char *
FUNC4(const char *parent_uri,
                  const char *child_uri)
{
  apr_size_t len = FUNC1(parent_uri);

  FUNC0(FUNC3(parent_uri, NULL));
  FUNC0(FUNC3(child_uri, NULL));

  if (0 != FUNC2(parent_uri, child_uri, len))
    return NULL; /* parent_uri is no ancestor of child_uri */

  if (child_uri[len] == 0)
    return ""; /* parent_uri == child_uri */

  if (child_uri[len] == '/')
    return child_uri + len + 1;

  return NULL;
}