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
typedef  int /*<<< orphan*/  svn_tristate_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,char*) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  svn_tristate_false ; 
 int /*<<< orphan*/  svn_tristate_true ; 
 int /*<<< orphan*/  svn_tristate_unknown ; 

svn_tristate_t
FUNC2(const char *word)
{
  if (word == NULL)
    return svn_tristate_unknown;
  else if (0 == FUNC1(word, "true")
           || 0 == FUNC1(word, "yes")
           || 0 == FUNC1(word, "on")
           || 0 == FUNC0(word, "1"))
    return svn_tristate_true;
  else if (0 == FUNC1(word, "false")
           || 0 == FUNC1(word, "no")
           || 0 == FUNC1(word, "off")
           || 0 == FUNC0(word, "0"))
    return svn_tristate_false;

  return svn_tristate_unknown;
}