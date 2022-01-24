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
typedef  int /*<<< orphan*/  svn_string_t ;
typedef  int /*<<< orphan*/  svn_fs_x__id_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int SVN_INT64_BUFFER_SIZE ; 
 char* FUNC0 (char*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int,int /*<<< orphan*/ *) ; 

svn_string_t *
FUNC2(const svn_fs_x__id_t *id,
                     apr_pool_t *result_pool)
{
  char string[2 * SVN_INT64_BUFFER_SIZE + 1];
  char *p = FUNC0(string, id);

  return FUNC1(string, p - string, result_pool);
}