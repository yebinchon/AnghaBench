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
struct kill {int action_set; int /*<<< orphan*/ * action_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*) ; 

int
FUNC2(struct kill *msg,
    const char * value)
{
  if (msg->action_data != NULL)
    FUNC0(msg->action_data);
  if ((msg->action_data = FUNC1(value)) == NULL)
    return (-1);
  msg->action_set = 1;
  return (0);
}