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
struct http_ctx {int /*<<< orphan*/ * curl_hdr; int /*<<< orphan*/ * curl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct http_ctx *ctx)
{
	if (ctx->curl) {
		FUNC0(ctx->curl);
		ctx->curl = NULL;
	}
	if (ctx->curl_hdr) {
		FUNC1(ctx->curl_hdr);
		ctx->curl_hdr = NULL;
	}
}