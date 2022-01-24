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
struct http_client {int /*<<< orphan*/  cb_ctx; int /*<<< orphan*/  (* cb ) (int /*<<< orphan*/ ,struct http_client*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  HTTP_CLIENT_TIMEOUT ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct http_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,struct http_client*) ; 

__attribute__((used)) static void FUNC2(void *eloop_data, void *user_ctx)
{
	struct http_client *c = eloop_data;
	FUNC1(MSG_DEBUG, "HTTP: Timeout (c=%p)", c);
	c->cb(c->cb_ctx, c, HTTP_CLIENT_TIMEOUT);
}