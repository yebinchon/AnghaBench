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
typedef  int /*<<< orphan*/  u8 ;
struct tls_connection {scalar_t__ server; scalar_t__ client; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int FUNC3 (struct tls_connection*) ; 
 int FUNC4 (scalar_t__,char const*,int /*<<< orphan*/  const*,size_t,int,int /*<<< orphan*/ *,int) ; 
 int FUNC5 (scalar_t__,char const*,int /*<<< orphan*/  const*,size_t,int,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC6(void *tls_ctx, struct tls_connection *conn,
			      const char *label, const u8 *context,
			      size_t context_len, int server_random_first,
			      int skip_keyblock, u8 *out, size_t out_len)
{
	int ret = -1, skip = 0;
	u8 *tmp_out = NULL;
	u8 *_out = out;

	if (skip_keyblock) {
		skip = FUNC3(conn);
		if (skip < 0)
			return -1;
		tmp_out = FUNC1(skip + out_len);
		if (!tmp_out)
			return -1;
		_out = tmp_out;
	}

#ifdef CONFIG_TLS_INTERNAL_CLIENT
	if (conn->client) {
		ret = tlsv1_client_prf(conn->client, label, context,
				       context_len, server_random_first,
				       _out, skip + out_len);
	}
#endif /* CONFIG_TLS_INTERNAL_CLIENT */
#ifdef CONFIG_TLS_INTERNAL_SERVER
	if (conn->server) {
		ret = tlsv1_server_prf(conn->server, label, context,
				       context_len, server_random_first,
				       _out, skip + out_len);
	}
#endif /* CONFIG_TLS_INTERNAL_SERVER */
	if (ret == 0 && skip_keyblock)
		FUNC2(out, _out + skip, out_len);
	FUNC0(tmp_out, skip);

	return ret;
}