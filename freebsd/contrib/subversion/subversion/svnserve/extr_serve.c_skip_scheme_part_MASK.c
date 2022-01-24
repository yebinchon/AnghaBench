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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,char*) ; 
 scalar_t__ FUNC1 (char const*,char*,int) ; 

__attribute__((used)) static const char *FUNC2(const char *url)
{
  if (FUNC1(url, "svn", 3) != 0)
    return NULL;
  url += 3;
  if (*url == '+')
    url += FUNC0(url, ":");
  if (FUNC1(url, "://", 3) != 0)
    return NULL;
  return url + 3;
}