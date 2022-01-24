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
typedef  scalar_t__ svn_boolean_t ;
typedef  int apr_size_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int SVN_KEYWORD_MAX_LEN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC3 (char*,int*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static svn_boolean_t
FUNC4(char *buf,
                  apr_size_t *len,
                  const char *keyword_name,
                  svn_boolean_t expand,
                  apr_hash_t *keywords)
{
  const svn_string_t *value;

  /* Make sure we gotz good stuffs. */
  FUNC0(*len <= SVN_KEYWORD_MAX_LEN);
  FUNC0((buf[0] == '$') && (buf[*len - 1] == '$'));

  /* Early return for ignored keywords */
  if (! keywords)
    return FALSE;

  value = FUNC2(keywords, keyword_name);

  if (value)
    {
      return FUNC3(buf, len,
                                     keyword_name, FUNC1(keyword_name),
                                     expand ? value : NULL);
    }

  return FALSE;
}