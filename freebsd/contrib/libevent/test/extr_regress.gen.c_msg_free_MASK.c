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
struct msg {int run_set; int run_length; struct msg* run_data; scalar_t__ run_num_allocated; int /*<<< orphan*/ * attack_data; struct msg* to_name_data; struct msg* from_name_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct msg*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct msg) ; 

void
FUNC3(struct msg *tmp)
{
  if (tmp->from_name_data != NULL)
      FUNC0 (tmp->from_name_data);
  if (tmp->to_name_data != NULL)
      FUNC0 (tmp->to_name_data);
  if (tmp->attack_data != NULL)
      FUNC1(tmp->attack_data);
  if (tmp->run_set == 1) {
    int i;
    for (i = 0; i < tmp->run_length; ++i) {
      FUNC2(tmp->run_data[i]);
    }
    FUNC0(tmp->run_data);
    tmp->run_data = NULL;
    tmp->run_set = 0;
    tmp->run_length = 0;
    tmp->run_num_allocated = 0;
  }
  FUNC0(tmp->run_data);
  FUNC0(tmp);
}