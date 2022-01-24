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
typedef  int /*<<< orphan*/  svn_token_map_t ;
typedef  int /*<<< orphan*/  svn_error_t ;

/* Variables and functions */
 int /*<<< orphan*/  SVN_ERR_BAD_TOKEN ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int SVN_TOKEN_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int FUNC2 (int /*<<< orphan*/  const*,char const*) ; 

svn_error_t *
FUNC3(int *value,
                         const svn_token_map_t *map,
                         const char *word)
{
  *value = FUNC2(map, word);

  if (*value == SVN_TOKEN_UNKNOWN)
    return FUNC1(SVN_ERR_BAD_TOKEN, NULL,
                             FUNC0("Token '%s' is unrecognized"),
                             word);

  return SVN_NO_ERROR;
}