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
struct TYPE_2__ {unsigned long n_written; unsigned long n_read; } ;
struct bufferevent_openssl {TYPE_1__ counts; int /*<<< orphan*/  bev; int /*<<< orphan*/  ssl; } ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline void
FUNC6(struct bufferevent_openssl *bev_ssl)
{
	unsigned long num_w = FUNC1(FUNC3(bev_ssl->ssl));
	unsigned long num_r = FUNC0(FUNC2(bev_ssl->ssl));
	/* These next two subtractions can wrap around. That's okay. */
	unsigned long w = num_w - bev_ssl->counts.n_written;
	unsigned long r = num_r - bev_ssl->counts.n_read;
	if (w)
		FUNC5(&bev_ssl->bev, w);
	if (r)
		FUNC4(&bev_ssl->bev, r);
	bev_ssl->counts.n_written = num_w;
	bev_ssl->counts.n_read = num_r;
}