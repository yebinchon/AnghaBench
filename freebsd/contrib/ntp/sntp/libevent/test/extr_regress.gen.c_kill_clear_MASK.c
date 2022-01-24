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
struct kill {int weapon_set; int action_set; int how_often_set; scalar_t__ how_often_num_allocated; scalar_t__ how_often_length; int /*<<< orphan*/ * how_often_data; int /*<<< orphan*/ * action_data; int /*<<< orphan*/ * weapon_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

void
FUNC1(struct kill *tmp)
{
  if (tmp->weapon_set == 1) {
    FUNC0(tmp->weapon_data);
    tmp->weapon_data = NULL;
    tmp->weapon_set = 0;
  }
  if (tmp->action_set == 1) {
    FUNC0(tmp->action_data);
    tmp->action_data = NULL;
    tmp->action_set = 0;
  }
  if (tmp->how_often_set == 1) {
    FUNC0(tmp->how_often_data);
    tmp->how_often_data = NULL;
    tmp->how_often_set = 0;
    tmp->how_often_length = 0;
    tmp->how_often_num_allocated = 0;
  }
}