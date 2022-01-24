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
struct tls_context {int dummy; } ;
typedef  int /*<<< orphan*/  WOLFSSL_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tls_context*) ; 
 struct tls_context* tls_global ; 
 scalar_t__ tls_ref_count ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct tls_context* FUNC2 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4(void *ssl_ctx)
{
	struct tls_context *context = FUNC2(ssl_ctx, 0);

	if (context != tls_global)
		FUNC0(context);

	FUNC1((WOLFSSL_CTX *) ssl_ctx);

	tls_ref_count--;
	if (tls_ref_count == 0) {
		FUNC3();
		FUNC0(tls_global);
		tls_global = NULL;
	}
}