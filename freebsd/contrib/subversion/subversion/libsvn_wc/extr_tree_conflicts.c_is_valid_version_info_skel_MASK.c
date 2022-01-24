#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {TYPE_6__* children; } ;
typedef  TYPE_5__ svn_skel_t ;
typedef  int svn_boolean_t ;
struct TYPE_14__ {TYPE_4__* next; } ;
struct TYPE_12__ {TYPE_3__* next; scalar_t__ is_atom; } ;
struct TYPE_11__ {TYPE_2__* next; scalar_t__ is_atom; } ;
struct TYPE_10__ {TYPE_1__* next; scalar_t__ is_atom; } ;
struct TYPE_9__ {scalar_t__ is_atom; } ;

/* Variables and functions */
 int FUNC0 (TYPE_5__ const*) ; 
 scalar_t__ FUNC1 (TYPE_6__*,char*) ; 

__attribute__((used)) static svn_boolean_t
FUNC2(const svn_skel_t *skel)
{
  return (FUNC0(skel) == 5
          && FUNC1(skel->children, "version")
          && skel->children->next->is_atom
          && skel->children->next->next->is_atom
          && skel->children->next->next->next->is_atom
          && skel->children->next->next->next->next->is_atom);
}