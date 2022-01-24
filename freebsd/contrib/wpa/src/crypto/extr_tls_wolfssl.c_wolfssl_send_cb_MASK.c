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
struct wpabuf {int dummy; } ;
struct tls_out_data {int /*<<< orphan*/  out_data; } ;
typedef  int /*<<< orphan*/  WOLFSSL ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 struct wpabuf* FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct wpabuf*) ; 

__attribute__((used)) static int FUNC3(WOLFSSL *ssl, char *buf, int sz, void *ctx)
{
	struct wpabuf *tmp;
	struct tls_out_data *data = ctx;

	if (!data)
		return -1;

	FUNC0(MSG_DEBUG, "SSL: adding %d bytes", sz);

	tmp = FUNC1(buf, sz);
	if (!tmp)
		return -1;
	data->out_data = FUNC2(data->out_data, tmp);
	if (!data->out_data)
		return -1;

	return sz;
}