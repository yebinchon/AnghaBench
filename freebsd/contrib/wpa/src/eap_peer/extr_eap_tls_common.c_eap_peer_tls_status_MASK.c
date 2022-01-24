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
typedef  int /*<<< orphan*/  version ;
struct eap_ssl_data {int /*<<< orphan*/  conn; int /*<<< orphan*/  ssl_ctx; } ;
struct eap_sm {int dummy; } ;
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 int FUNC0 (char*,size_t,char*,char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 

int FUNC5(struct eap_sm *sm, struct eap_ssl_data *data,
			char *buf, size_t buflen, int verbose)
{
	char version[20], name[128];
	int len = 0, ret;

	if (FUNC4(data->ssl_ctx, data->conn, version,
			    sizeof(version)) < 0)
		version[0] = '\0';
	if (FUNC3(data->ssl_ctx, data->conn, name, sizeof(name)) < 0)
		name[0] = '\0';

	ret = FUNC0(buf + len, buflen - len,
			  "eap_tls_version=%s\n"
			  "EAP TLS cipher=%s\n"
			  "tls_session_reused=%d\n",
			  version, name,
			  FUNC2(data->ssl_ctx, data->conn));
	if (FUNC1(buflen - len, ret))
		return len;
	len += ret;

	return len;
}