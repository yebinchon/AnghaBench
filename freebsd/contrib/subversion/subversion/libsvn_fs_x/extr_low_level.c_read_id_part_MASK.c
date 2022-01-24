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
typedef  int /*<<< orphan*/  svn_fs_x__id_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_FS_CORRUPT ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 char* FUNC4 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static svn_error_t *
FUNC5(svn_fs_x__id_t *id,
             apr_hash_t *headers,
             const char *header_name)
{
  const char *value = FUNC4(headers, header_name);
  if (value == NULL)
    return FUNC2(SVN_ERR_FS_CORRUPT, NULL,
                             FUNC1("Missing %s field in node-rev"),
                             header_name);

  FUNC0(FUNC3(id, value));
  return SVN_NO_ERROR;
}