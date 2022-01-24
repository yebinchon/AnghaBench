#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_1__* next; struct TYPE_9__* children; scalar_t__ len; scalar_t__ is_atom; } ;
typedef  TYPE_2__ svn_skel_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct TYPE_8__ {scalar_t__ is_atom; TYPE_2__* next; scalar_t__ len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_2__**) ; 
 int FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (TYPE_2__*,char*) ; 

__attribute__((used)) static svn_boolean_t
FUNC3(svn_skel_t *skel)
{
  int len = FUNC1(skel);
  svn_skel_t *header = skel->children;
  svn_skel_t *kind;

  if (len < 1)
    return FALSE;

  if (! FUNC0(header, &kind))
    return FALSE;

  if (FUNC2(kind, "dir"))
    {
      if (! ((len == 3)
             && header->next->is_atom
             && header->next->next->is_atom))
        return FALSE;
    }
  else if (FUNC2(kind, "file"))
    {
      if (len < 3)
        return FALSE;

      if (! header->next->is_atom)
        return FALSE;

      /* As of SVN_FS_BASE__MIN_REP_SHARING_FORMAT version, the
         DATA-KEY slot can be a 2-tuple. */
      if (! header->next->next->is_atom)
        {
          if (! ((FUNC1(header->next->next) == 2)
                 && header->next->next->children->is_atom
                 && header->next->next->children->len
                 && header->next->next->children->next->is_atom
                 && header->next->next->children->next->len))
            return FALSE;
        }

      if ((len > 3) && (! header->next->next->next->is_atom))
        return FALSE;

      if (len > 4)
        return FALSE;
    }

  return TRUE;
}