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
struct kill {int weapon_set; char* weapon_data; } ;

/* Variables and functions */

int
FUNC0(struct kill *msg, char * *value)
{
  if (msg->weapon_set != 1)
    return (-1);
  *value = msg->weapon_data;
  return (0);
}