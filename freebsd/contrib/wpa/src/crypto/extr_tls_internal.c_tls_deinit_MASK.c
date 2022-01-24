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
struct tls_global {int /*<<< orphan*/  server_cred; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tls_global*) ; 
 scalar_t__ tls_ref_count ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4(void *ssl_ctx)
{
	struct tls_global *global = ssl_ctx;
	tls_ref_count--;
	if (tls_ref_count == 0) {
#ifdef CONFIG_TLS_INTERNAL_CLIENT
		tlsv1_client_global_deinit();
#endif /* CONFIG_TLS_INTERNAL_CLIENT */
#ifdef CONFIG_TLS_INTERNAL_SERVER
		tlsv1_server_global_deinit();
#endif /* CONFIG_TLS_INTERNAL_SERVER */
	}
#ifdef CONFIG_TLS_INTERNAL_SERVER
	tlsv1_cred_free(global->server_cred);
#endif /* CONFIG_TLS_INTERNAL_SERVER */
	FUNC0(global);
}