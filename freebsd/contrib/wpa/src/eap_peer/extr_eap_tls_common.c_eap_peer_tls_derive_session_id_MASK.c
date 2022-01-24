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
typedef  scalar_t__ u8 ;
struct tls_random {scalar_t__* client_random; scalar_t__* server_random; int client_random_len; int server_random_len; } ;
struct eap_ssl_data {int /*<<< orphan*/  conn; scalar_t__ tls_v13; } ;
struct eap_sm {int /*<<< orphan*/  ssl_ctx; } ;

/* Variables and functions */
 scalar_t__ EAP_TYPE_TLS ; 
 scalar_t__* FUNC0 (struct eap_sm*,struct eap_ssl_data*,char*,scalar_t__ const*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 scalar_t__* FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,scalar_t__*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tls_random*) ; 

u8 * FUNC5(struct eap_sm *sm,
				    struct eap_ssl_data *data, u8 eap_type,
				    size_t *len)
{
	struct tls_random keys;
	u8 *out;

	if (eap_type == EAP_TYPE_TLS && data->tls_v13) {
		u8 *id, *method_id;
		const u8 context[] = { EAP_TYPE_TLS };

		/* Session-Id = <EAP-Type> || Method-Id
		 * Method-Id = TLS-Exporter("EXPORTER_EAP_TLS_Method-Id",
		 *                          Type-Code, 64)
		 */
		*len = 1 + 64;
		id = FUNC2(*len);
		if (!id)
			return NULL;
		method_id = FUNC0(
			sm, data, "EXPORTER_EAP_TLS_Method-Id", context, 1, 64);
		if (!method_id) {
			FUNC1(id);
			return NULL;
		}
		id[0] = eap_type;
		FUNC3(id + 1, method_id, 64);
		FUNC1(method_id);
		return id;
	}

	if (FUNC4(sm->ssl_ctx, data->conn, &keys) ||
	    keys.client_random == NULL || keys.server_random == NULL)
		return NULL;

	*len = 1 + keys.client_random_len + keys.server_random_len;
	out = FUNC2(*len);
	if (out == NULL)
		return NULL;

	/* Session-Id = EAP type || client.random || server.random */
	out[0] = eap_type;
	FUNC3(out + 1, keys.client_random, keys.client_random_len);
	FUNC3(out + 1 + keys.client_random_len, keys.server_random,
		  keys.server_random_len);

	return out;
}