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
 int /*<<< orphan*/  SVN_ERR_BAD_CHANGELIST_NAME ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,unsigned char) ; 
 int FUNC3 (char const*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC5(char **encoded_name_p,
                  const char *name,
                  apr_pool_t *result_pool)
{
  char *encoded_name
    = FUNC1(result_pool, FUNC3(name) * 2 + 1);
  char *out_pos = encoded_name;

  if (name[0] == '\0')
    return FUNC4(SVN_ERR_BAD_CHANGELIST_NAME, NULL,
                            FUNC0("Shelf name cannot be the empty string"));

  while (*name)
    {
      FUNC2(out_pos, 3, "%02x", (unsigned char)(*name++));
      out_pos += 2;
    }
  *encoded_name_p = encoded_name;
  return SVN_NO_ERROR;
}