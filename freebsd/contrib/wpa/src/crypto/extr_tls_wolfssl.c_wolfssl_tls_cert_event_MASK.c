#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int hash_len; int depth; char const* subject; char** altsubject; int num_altsubject; int /*<<< orphan*/ * hash; struct wpabuf* cert; } ;
union tls_event_data {TYPE_1__ peer_cert; } ;
typedef  int /*<<< orphan*/  u8 ;
struct wpabuf {int dummy; } ;
struct tls_context {int /*<<< orphan*/  cb_ctx; int /*<<< orphan*/  (* event_cb ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,union tls_event_data*) ;scalar_t__ cert_in_cb; } ;
struct tls_connection {int flags; scalar_t__ cert_probe; struct tls_context* context; } ;
typedef  int /*<<< orphan*/  hash ;
typedef  int /*<<< orphan*/  ev ;
typedef  int /*<<< orphan*/  WOLFSSL_X509 ;
struct TYPE_5__ {int type; char* obj; } ;
typedef  TYPE_2__ WOLFSSL_ASN1_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/  ALT_NAMES_OID ; 
#define  GEN_DNS 130 
#define  GEN_EMAIL 129 
#define  GEN_URI 128 
 int TLS_CONN_EXT_CERT_CHECK ; 
 int TLS_MAX_ALT_SUBJECT ; 
 int /*<<< orphan*/  TLS_PEER_CERTIFICATE ; 
 struct wpabuf* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (union tls_event_data*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (char*) ; 
 scalar_t__ FUNC6 (int,int /*<<< orphan*/  const**,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,union tls_event_data*) ; 
 void* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 
 int FUNC10 (void*) ; 
 TYPE_2__* FUNC11 (void*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct wpabuf*) ; 
 int /*<<< orphan*/ * FUNC13 (struct wpabuf*) ; 
 size_t FUNC14 (struct wpabuf*) ; 

__attribute__((used)) static void FUNC15(struct tls_connection *conn,
				   WOLFSSL_X509 *err_cert, int depth,
				   const char *subject)
{
	struct wpabuf *cert = NULL;
	union tls_event_data ev;
	struct tls_context *context = conn->context;
	char *alt_subject[TLS_MAX_ALT_SUBJECT];
	int alt, num_alt_subject = 0;
	WOLFSSL_ASN1_OBJECT *gen;
	void *ext;
	int i;
#ifdef CONFIG_SHA256
	u8 hash[32];
#endif /* CONFIG_SHA256 */

	if (!context->event_cb)
		return;

	FUNC4(&ev, 0, sizeof(ev));
	if (conn->cert_probe || (conn->flags & TLS_CONN_EXT_CERT_CHECK) ||
	    context->cert_in_cb) {
		cert = FUNC0(err_cert);
		ev.peer_cert.cert = cert;
	}

#ifdef CONFIG_SHA256
	if (cert) {
		const u8 *addr[1];
		size_t len[1];

		addr[0] = wpabuf_head(cert);
		len[0] = wpabuf_len(cert);
		if (sha256_vector(1, addr, len, hash) == 0) {
			ev.peer_cert.hash = hash;
			ev.peer_cert.hash_len = sizeof(hash);
		}
	}
#endif /* CONFIG_SHA256 */

	ev.peer_cert.depth = depth;
	ev.peer_cert.subject = subject;

	ext = FUNC8(err_cert, ALT_NAMES_OID, NULL, NULL);
	for (i = 0; ext && i < FUNC10(ext); i++) {
		char *pos;

		if (num_alt_subject == TLS_MAX_ALT_SUBJECT)
			break;
		gen = FUNC11((void *) ext, i);
		if (gen->type != GEN_EMAIL &&
		    gen->type != GEN_DNS &&
		    gen->type != GEN_URI)
			continue;

		pos = FUNC2(10 + FUNC5((char *) gen->obj) + 1);
		if (!pos)
			break;
		alt_subject[num_alt_subject++] = pos;

		switch (gen->type) {
		case GEN_EMAIL:
			FUNC3(pos, "EMAIL:", 6);
			pos += 6;
			break;
		case GEN_DNS:
			FUNC3(pos, "DNS:", 4);
			pos += 4;
			break;
		case GEN_URI:
			FUNC3(pos, "URI:", 4);
			pos += 4;
			break;
		}

		FUNC3(pos, gen->obj, FUNC5((char *)gen->obj));
		pos += FUNC5((char *)gen->obj);
		*pos = '\0';
	}
	FUNC9(ext);

	for (alt = 0; alt < num_alt_subject; alt++)
		ev.peer_cert.altsubject[alt] = alt_subject[alt];
	ev.peer_cert.num_altsubject = num_alt_subject;

	context->event_cb(context->cb_ctx, TLS_PEER_CERTIFICATE, &ev);
	FUNC12(cert);
	for (alt = 0; alt < num_alt_subject; alt++)
		FUNC1(alt_subject[alt]);
}