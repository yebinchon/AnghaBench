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
struct kill {int dummy; } ;
struct evbuffer {int dummy; } ;
typedef  int /*<<< orphan*/  ev_uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct evbuffer*) ; 
 struct evbuffer* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct evbuffer*,int /*<<< orphan*/ ,struct evbuffer*) ; 
 int /*<<< orphan*/  FUNC4 (struct evbuffer*,struct kill const*) ; 

void
FUNC5(struct evbuffer *evbuf, ev_uint32_t tag, const struct kill *msg)
{
  struct evbuffer *buf_ = FUNC2();
  FUNC0(buf_ != NULL);
  FUNC4(buf_, msg);
  FUNC3(evbuf, tag, buf_);
   FUNC1(buf_);
}