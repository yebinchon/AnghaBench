#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct TYPE_5__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ cfg_section_t ;
struct TYPE_6__ {int /*<<< orphan*/  value; int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ cfg_option_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_boolean_t
FUNC1(void *baton, cfg_section_t *section, cfg_option_t *option)
{
  FUNC0(baton, section->name, option->name, option->value);
  return FALSE;
}