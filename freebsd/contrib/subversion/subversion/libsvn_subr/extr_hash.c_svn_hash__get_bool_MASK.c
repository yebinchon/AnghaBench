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
typedef  scalar_t__ svn_tristate_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 char* FUNC0 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char const*) ; 
 scalar_t__ svn_tristate_false ; 
 scalar_t__ svn_tristate_true ; 

svn_boolean_t
FUNC2(apr_hash_t *hash, const char *key,
                   svn_boolean_t default_value)
{
  const char *tmp_value = FUNC0(hash, key, NULL);
  svn_tristate_t value = FUNC1(tmp_value);

  if (value == svn_tristate_true)
    return TRUE;
  else if (value == svn_tristate_false)
    return FALSE;

  return default_value;
}