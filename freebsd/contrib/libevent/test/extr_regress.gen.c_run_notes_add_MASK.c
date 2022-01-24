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
struct run {scalar_t__ notes_length; scalar_t__ notes_num_allocated; char** notes_data; int notes_set; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct run*) ; 
 char* FUNC1 (char const*) ; 

char * *
FUNC2(struct run *msg, const char * value)
{
  if (++msg->notes_length >= msg->notes_num_allocated) {
    if (FUNC0(msg)<0)
      goto error;
  }
  if (value != NULL) {
    msg->notes_data[msg->notes_length - 1] = FUNC1(value);
    if (msg->notes_data[msg->notes_length - 1] == NULL) {
      goto error;
    }
  } else {
    msg->notes_data[msg->notes_length - 1] = NULL;
  }
  msg->notes_set = 1;
  return &(msg->notes_data[msg->notes_length - 1]);
error:
  --msg->notes_length;
  return (NULL);
}