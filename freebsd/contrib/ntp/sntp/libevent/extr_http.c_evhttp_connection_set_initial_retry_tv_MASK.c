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
struct timeval {int tv_sec; } ;
struct evhttp_connection {struct timeval initial_retry_timeout; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct timeval*) ; 

void
FUNC1(struct evhttp_connection *evcon,
    const struct timeval *tv)
{
	if (tv) {
		evcon->initial_retry_timeout = *tv;
	} else {
		FUNC0(&evcon->initial_retry_timeout);
		evcon->initial_retry_timeout.tv_sec = 2;
	}
}