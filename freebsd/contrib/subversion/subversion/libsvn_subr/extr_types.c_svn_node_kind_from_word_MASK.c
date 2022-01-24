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
typedef  int /*<<< orphan*/  svn_node_kind_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,char*) ; 
 int /*<<< orphan*/  svn_node_dir ; 
 int /*<<< orphan*/  svn_node_file ; 
 int /*<<< orphan*/  svn_node_none ; 
 int /*<<< orphan*/  svn_node_symlink ; 
 int /*<<< orphan*/  svn_node_unknown ; 

svn_node_kind_t
FUNC1(const char *word)
{
  if (word == NULL)
    return svn_node_unknown;

  if (FUNC0(word, "none") == 0)
    return svn_node_none;
  else if (FUNC0(word, "file") == 0)
    return svn_node_file;
  else if (FUNC0(word, "dir") == 0)
    return svn_node_dir;
  else if (FUNC0(word, "symlink") == 0)
    return svn_node_symlink;
  else
    /* This also handles word == "unknown" */
    return svn_node_unknown;
}