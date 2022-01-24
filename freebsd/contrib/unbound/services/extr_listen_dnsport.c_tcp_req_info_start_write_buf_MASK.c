#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct tcp_req_info {TYPE_1__* cp; } ;
struct TYPE_2__ {scalar_t__ tcp_is_reading; int /*<<< orphan*/  buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static void
FUNC3(struct tcp_req_info* req, uint8_t* buf,
	size_t len)
{
	FUNC0(req->cp->buffer);
	FUNC2(req->cp->buffer, buf, len);
	FUNC1(req->cp->buffer);

	req->cp->tcp_is_reading = 0; /* we are now writing */
}