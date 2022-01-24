#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int is_local; char* type; int /*<<< orphan*/  description; } ;
union tls_event_data {TYPE_1__ alert; } ;
struct tls_context {int /*<<< orphan*/  cb_ctx; int /*<<< orphan*/  (* event_cb ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,union tls_event_data*) ;} ;
struct tls_connection {struct tls_context* context; int /*<<< orphan*/  write_alerts; int /*<<< orphan*/  read_alerts; } ;
typedef  int /*<<< orphan*/  ev ;
typedef  int /*<<< orphan*/  SSL ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int SSL3_AL_FATAL ; 
 int SSL_CB_ALERT ; 
 int SSL_CB_EXIT ; 
 int SSL_CB_LOOP ; 
 int SSL_CB_READ ; 
 int SSL_ST_ACCEPT ; 
 int SSL_ST_CONNECT ; 
 int SSL_ST_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (int) ; 
 struct tls_connection* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  TLS_ALERT ; 
 int /*<<< orphan*/  FUNC4 (union tls_event_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,union tls_event_data*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void FUNC7(const SSL *ssl, int where, int ret)
{
	const char *str;
	int w;

	FUNC6(MSG_DEBUG, "SSL: (where=0x%x ret=0x%x)", where, ret);
	w = where & ~SSL_ST_MASK;
	if (w & SSL_ST_CONNECT)
		str = "SSL_connect";
	else if (w & SSL_ST_ACCEPT)
		str = "SSL_accept";
	else
		str = "undefined";

	if (where & SSL_CB_LOOP) {
		FUNC6(MSG_DEBUG, "SSL: %s:%s",
			   str, FUNC3(ssl));
	} else if (where & SSL_CB_ALERT) {
		struct tls_connection *conn = FUNC2((SSL *) ssl);
		FUNC6(MSG_INFO, "SSL: SSL3 alert: %s:%s:%s",
			   where & SSL_CB_READ ?
			   "read (remote end reported an error)" :
			   "write (local SSL3 detected an error)",
			   FUNC1(ret),
			   FUNC0(ret));
		if ((ret >> 8) == SSL3_AL_FATAL) {
			if (where & SSL_CB_READ)
				conn->read_alerts++;
			else
				conn->write_alerts++;
		}
		if (conn->context->event_cb != NULL) {
			union tls_event_data ev;
			struct tls_context *context = conn->context;
			FUNC4(&ev, 0, sizeof(ev));
			ev.alert.is_local = !(where & SSL_CB_READ);
			ev.alert.type = FUNC1(ret);
			ev.alert.description = FUNC0(ret);
			context->event_cb(context->cb_ctx, TLS_ALERT, &ev);
		}
	} else if (where & SSL_CB_EXIT && ret <= 0) {
		FUNC6(MSG_DEBUG, "SSL: %s:%s in %s",
			   str, ret == 0 ? "failed" : "error",
			   FUNC3(ssl));
	}
}