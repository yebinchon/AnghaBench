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
struct msg {int run_length; int /*<<< orphan*/ * run_data; scalar_t__ run_set; int /*<<< orphan*/  attack_data; scalar_t__ attack_set; int /*<<< orphan*/  to_name_data; int /*<<< orphan*/  from_name_data; } ;
struct evbuffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_ATTACK ; 
 int /*<<< orphan*/  MSG_FROM_NAME ; 
 int /*<<< orphan*/  MSG_RUN ; 
 int /*<<< orphan*/  MSG_TO_NAME ; 
 int /*<<< orphan*/  FUNC0 (struct evbuffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct evbuffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct evbuffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC3(struct evbuffer *evbuf, const struct msg *tmp){
  FUNC2(evbuf, MSG_FROM_NAME, tmp->from_name_data);
  FUNC2(evbuf, MSG_TO_NAME, tmp->to_name_data);
  if (tmp->attack_set) {
    FUNC0(evbuf, MSG_ATTACK, tmp->attack_data);
  }
  if (tmp->run_set) {
    {
      int i;
      for (i = 0; i < tmp->run_length; ++i) {
    FUNC1(evbuf, MSG_RUN, tmp->run_data[i]);
      }
    }
  }
}