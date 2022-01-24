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
struct tls_global {struct tls_global* ocsp_stapling_response; struct tls_global* session_data; int /*<<< orphan*/  xcred; scalar_t__ params_set; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct tls_global*) ; 
 scalar_t__ tls_gnutls_ref_count ; 

void FUNC3(void *ssl_ctx)
{
	struct tls_global *global = ssl_ctx;
	if (global) {
		if (global->params_set)
			FUNC0(global->xcred);
		FUNC2(global->session_data);
		FUNC2(global->ocsp_stapling_response);
		FUNC2(global);
	}

	tls_gnutls_ref_count--;
	if (tls_gnutls_ref_count == 0)
		FUNC1();
}