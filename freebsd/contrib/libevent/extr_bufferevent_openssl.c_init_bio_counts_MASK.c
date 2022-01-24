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
struct TYPE_2__ {int /*<<< orphan*/  n_read; int /*<<< orphan*/  n_written; } ;
struct bufferevent_openssl {TYPE_1__ counts; int /*<<< orphan*/  ssl; } ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct bufferevent_openssl *bev_ssl)
{
	BIO *rbio, *wbio;

	wbio = FUNC3(bev_ssl->ssl);
	bev_ssl->counts.n_written = wbio ? FUNC1(wbio) : 0;
	rbio = FUNC2(bev_ssl->ssl);
	bev_ssl->counts.n_read = rbio ? FUNC0(rbio) : 0;
}