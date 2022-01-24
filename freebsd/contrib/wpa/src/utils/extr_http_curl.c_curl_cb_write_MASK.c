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
struct http_ctx {char* curl_buf; size_t curl_buf_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,void*,size_t) ; 
 char* FUNC1 (char*,size_t) ; 

__attribute__((used)) static size_t FUNC2(void *ptr, size_t size, size_t nmemb,
			    void *userdata)
{
	struct http_ctx *ctx = userdata;
	char *n;
	n = FUNC1(ctx->curl_buf, ctx->curl_buf_len + size * nmemb + 1);
	if (n == NULL)
		return 0;
	ctx->curl_buf = n;
	FUNC0(n + ctx->curl_buf_len, ptr, size * nmemb);
	n[ctx->curl_buf_len + size * nmemb] = '\0';
	ctx->curl_buf_len += size * nmemb;
	return size * nmemb;
}