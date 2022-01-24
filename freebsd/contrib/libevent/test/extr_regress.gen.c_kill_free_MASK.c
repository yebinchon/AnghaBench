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
struct kill {int how_often_set; struct kill* how_often_data; scalar_t__ how_often_num_allocated; scalar_t__ how_often_length; struct kill* action_data; struct kill* weapon_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kill*) ; 

void
FUNC1(struct kill *tmp)
{
  if (tmp->weapon_data != NULL)
      FUNC0 (tmp->weapon_data);
  if (tmp->action_data != NULL)
      FUNC0 (tmp->action_data);
  if (tmp->how_often_set == 1) {
    FUNC0(tmp->how_often_data);
    tmp->how_often_data = NULL;
    tmp->how_often_set = 0;
    tmp->how_often_length = 0;
    tmp->how_often_num_allocated = 0;
  }
  FUNC0(tmp->how_often_data);
  FUNC0(tmp);
}