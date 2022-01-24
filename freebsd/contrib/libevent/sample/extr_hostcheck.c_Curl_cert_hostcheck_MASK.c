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
 scalar_t__ CURL_HOST_MATCH ; 
 scalar_t__ FUNC0 (char const*,char const*) ; 
 scalar_t__ FUNC1 (char const*,char const*) ; 

int FUNC2(const char *match_pattern, const char *hostname)
{
  if(!match_pattern || !*match_pattern ||
      !hostname || !*hostname) /* sanity check */
    return 0;

  if(FUNC0(hostname, match_pattern)) /* trivial case */
    return 1;

  if(FUNC1(hostname,match_pattern) == CURL_HOST_MATCH)
    return 1;
  return 0;
}