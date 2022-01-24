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
struct run {int dummy; } ;
struct msg {scalar_t__ run_length; scalar_t__ run_num_allocated; int run_set; struct run** run_data; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct msg*) ; 
 struct run* FUNC1 () ; 

struct run* 
FUNC2(struct msg *msg)
{
  if (++msg->run_length >= msg->run_num_allocated) {
    if (FUNC0(msg)<0)
      goto error;
  }
  msg->run_data[msg->run_length - 1] = FUNC1();
  if (msg->run_data[msg->run_length - 1] == NULL)
    goto error;
  msg->run_set = 1;
  return (msg->run_data[msg->run_length - 1]);
error:
  --msg->run_length;
  return (NULL);
}