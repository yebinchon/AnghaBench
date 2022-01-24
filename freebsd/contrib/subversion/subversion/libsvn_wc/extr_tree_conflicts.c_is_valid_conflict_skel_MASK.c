#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {struct TYPE_6__ const* next; int /*<<< orphan*/  is_atom; TYPE_2__* children; } ;
typedef  TYPE_1__ const svn_skel_t ;
typedef  int svn_boolean_t ;
struct TYPE_7__ {TYPE_1__ const* next; } ;

/* Variables and functions */
 int FALSE ; 
 scalar_t__ FUNC0 (TYPE_1__ const*) ; 
 int FUNC1 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*) ; 

__attribute__((used)) static svn_boolean_t
FUNC3(const svn_skel_t *skel)
{
  int i;

  if (FUNC1(skel) != 8
      || !FUNC2(skel->children, "conflict"))
    return FALSE;

  /* 5 atoms ... */
  skel = skel->children->next;
  for (i = 5; i--; skel = skel->next)
    if (!skel->is_atom)
      return FALSE;

  /* ... and 2 version info skels. */
  return (FUNC0(skel)
          && FUNC0(skel->next));
}