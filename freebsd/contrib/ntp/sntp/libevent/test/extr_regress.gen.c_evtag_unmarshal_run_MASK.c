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
struct evbuffer {int dummy; } ;
typedef  scalar_t__ ev_uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct evbuffer*) ; 
 struct evbuffer* FUNC1 () ; 
 int FUNC2 (struct evbuffer*,scalar_t__*,struct evbuffer*) ; 
 int FUNC3 (struct run*,struct evbuffer*) ; 

int
FUNC4(struct evbuffer *evbuf, ev_uint32_t need_tag, struct run *msg)
{
  ev_uint32_t tag;
  int res = -1;

  struct evbuffer *tmp = FUNC1();

  if (FUNC2(evbuf, &tag, tmp) == -1 || tag != need_tag)
    goto error;

  if (FUNC3(msg, tmp) == -1)
    goto error;

  res = 0;

 error:
  FUNC0(tmp);
  return (res);
}