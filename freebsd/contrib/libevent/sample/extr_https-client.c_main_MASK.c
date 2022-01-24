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
typedef  int /*<<< orphan*/  uri ;
struct evkeyvalq {int dummy; } ;
struct evhttp_uri {int dummy; } ;
struct evhttp_request {int dummy; } ;
struct evhttp_connection {int dummy; } ;
struct evbuffer {int dummy; } ;
struct bufferevent {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  WSADATA ;
typedef  int /*<<< orphan*/  WORD ;
typedef  int /*<<< orphan*/  SSL_CTX ;
typedef  int /*<<< orphan*/  SSL ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int BEV_OPT_CLOSE_ON_FREE ; 
 int BEV_OPT_DEFER_CALLBACKS ; 
 int /*<<< orphan*/  BUFFEREVENT_SSL_CONNECTING ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EVHTTP_REQ_GET ; 
 int /*<<< orphan*/  EVHTTP_REQ_POST ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SSL_VERIFY_PEER ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC23 (char*) ; 
 int /*<<< orphan*/  base ; 
 int /*<<< orphan*/  FUNC24 (struct bufferevent*,int) ; 
 struct bufferevent* FUNC25 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct bufferevent* FUNC26 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  cert_verify_callback ; 
 int /*<<< orphan*/  FUNC27 (char*) ; 
 int /*<<< orphan*/  FUNC28 (char*) ; 
 int /*<<< orphan*/  FUNC29 (struct evbuffer*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 () ; 
 int /*<<< orphan*/  FUNC33 (struct evkeyvalq*,char*,char const*) ; 
 struct evhttp_connection* FUNC34 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct bufferevent*,char const*,int) ; 
 int /*<<< orphan*/  FUNC35 (struct evhttp_connection*) ; 
 int /*<<< orphan*/  FUNC36 (struct evhttp_connection*,int) ; 
 int /*<<< orphan*/  FUNC37 (struct evhttp_connection*,int) ; 
 int FUNC38 (struct evhttp_connection*,struct evhttp_request*,int /*<<< orphan*/ ,char*) ; 
 struct evbuffer* FUNC39 (struct evhttp_request*) ; 
 struct evkeyvalq* FUNC40 (struct evhttp_request*) ; 
 struct evhttp_request* FUNC41 (int /*<<< orphan*/ ,struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC42 (struct evhttp_uri*) ; 
 char* FUNC43 (struct evhttp_uri*) ; 
 char* FUNC44 (struct evhttp_uri*) ; 
 int FUNC45 (struct evhttp_uri*) ; 
 char* FUNC46 (struct evhttp_uri*) ; 
 char* FUNC47 (struct evhttp_uri*) ; 
 struct evhttp_uri* FUNC48 (char const*) ; 
 int /*<<< orphan*/  FUNC49 (char*,int,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC50 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC51 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC52 (int /*<<< orphan*/ ,char*) ; 
 size_t FUNC53 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  http_request_done ; 
 int ignore_cert ; 
 int /*<<< orphan*/  FUNC54 (char*) ; 
 int /*<<< orphan*/  FUNC55 (char*,int) ; 
 int /*<<< orphan*/  FUNC56 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC57 (char*,int,char*,char const*,...) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC58 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC59 (char*,char*) ; 
 scalar_t__ FUNC60 (char const*) ; 
 int /*<<< orphan*/  FUNC61 () ; 

int
FUNC62(int argc, char **argv)
{
	int r;

	struct evhttp_uri *http_uri = NULL;
	const char *url = NULL, *data_file = NULL;
	const char *crt = "/etc/ssl/certs/ca-certificates.crt";
	const char *scheme, *host, *path, *query;
	char uri[256];
	int port;
	int retries = 0;
	int timeout = -1;

	SSL_CTX *ssl_ctx = NULL;
	SSL *ssl = NULL;
	struct bufferevent *bev;
	struct evhttp_connection *evcon = NULL;
	struct evhttp_request *req;
	struct evkeyvalq *output_headers;
	struct evbuffer *output_buffer;

	int i;
	int ret = 0;
	enum { HTTP, HTTPS } type = HTTP;

	for (i = 1; i < argc; i++) {
		if (!FUNC59("-url", argv[i])) {
			if (i < argc - 1) {
				url = argv[i + 1];
			} else {
				FUNC61();
				goto error;
			}
		} else if (!FUNC59("-crt", argv[i])) {
			if (i < argc - 1) {
				crt = argv[i + 1];
			} else {
				FUNC61();
				goto error;
			}
		} else if (!FUNC59("-ignore-cert", argv[i])) {
			ignore_cert = 1;
		} else if (!FUNC59("-data", argv[i])) {
			if (i < argc - 1) {
				data_file = argv[i + 1];
			} else {
				FUNC61();
				goto error;
			}
		} else if (!FUNC59("-retries", argv[i])) {
			if (i < argc - 1) {
				retries = FUNC23(argv[i + 1]);
			} else {
				FUNC61();
				goto error;
			}
		} else if (!FUNC59("-timeout", argv[i])) {
			if (i < argc - 1) {
				timeout = FUNC23(argv[i + 1]);
			} else {
				FUNC61();
				goto error;
			}
		} else if (!FUNC59("-help", argv[i])) {
			FUNC61();
			goto error;
		}
	}

	if (!url) {
		FUNC61();
		goto error;
	}

#ifdef _WIN32
	{
		WORD wVersionRequested;
		WSADATA wsaData;
		int err;

		wVersionRequested = MAKEWORD(2, 2);

		err = WSAStartup(wVersionRequested, &wsaData);
		if (err != 0) {
			printf("WSAStartup failed with error: %d\n", err);
			goto error;
		}
	}
#endif // _WIN32

	http_uri = FUNC48(url);
	if (http_uri == NULL) {
		FUNC27("malformed url");
		goto error;
	}

	scheme = FUNC47(http_uri);
	if (scheme == NULL || (FUNC58(scheme, "https") != 0 &&
	                       FUNC58(scheme, "http") != 0)) {
		FUNC27("url must be http or https");
		goto error;
	}

	host = FUNC43(http_uri);
	if (host == NULL) {
		FUNC27("url must have a host");
		goto error;
	}

	port = FUNC45(http_uri);
	if (port == -1) {
		port = (FUNC58(scheme, "http") == 0) ? 80 : 443;
	}

	path = FUNC44(http_uri);
	if (FUNC60(path) == 0) {
		path = "/";
	}

	query = FUNC46(http_uri);
	if (query == NULL) {
		FUNC57(uri, sizeof(uri) - 1, "%s", path);
	} else {
		FUNC57(uri, sizeof(uri) - 1, "%s?%s", path, query);
	}
	uri[sizeof(uri) - 1] = '\0';

#if OPENSSL_VERSION_NUMBER < 0x10100000L
	// Initialize OpenSSL
	FUNC16();
	FUNC2();
	FUNC17();
	FUNC7();
#endif

	/* This isn't strictly necessary... OpenSSL performs RAND_poll
	 * automatically on first use of random number generator. */
	r = FUNC8();
	if (r == 0) {
		FUNC28("RAND_poll");
		goto error;
	}

	/* Create a new OpenSSL context */
	ssl_ctx = FUNC12(FUNC20());
	if (!ssl_ctx) {
		FUNC28("SSL_CTX_new");
		goto error;
	}

#ifndef _WIN32
	/* TODO: Add certificate loading on Windows as well */

	/* Attempt to use the system's trusted root certificates.
	 * (This path is only valid for Debian-based systems.) */
	if (1 != FUNC11(ssl_ctx, crt, NULL)) {
		FUNC28("SSL_CTX_load_verify_locations");
		goto error;
	}
	/* Ask OpenSSL to verify the server certificate.  Note that this
	 * does NOT include verifying that the hostname is correct.
	 * So, by itself, this means anyone with any legitimate
	 * CA-issued certificate for any website, can impersonate any
	 * other website in the world.  This is not good.  See "The
	 * Most Dangerous Code in the World" article at
	 * https://crypto.stanford.edu/~dabo/pubs/abstracts/ssl-client-bugs.html
	 */
	FUNC14(ssl_ctx, SSL_VERIFY_PEER, NULL);
	/* This is how we solve the problem mentioned in the previous
	 * comment.  We "wrap" OpenSSL's validation routine in our
	 * own routine, which also validates the hostname by calling
	 * the code provided by iSECPartners.  Note that even though
	 * the "Everything You've Always Wanted to Know About
	 * Certificate Validation With OpenSSL (But Were Afraid to
	 * Ask)" paper from iSECPartners says very explicitly not to
	 * call SSL_CTX_set_cert_verify_callback (at the bottom of
	 * page 2), what we're doing here is safe because our
	 * cert_verify_callback() calls X509_verify_cert(), which is
	 * OpenSSL's built-in routine which would have been called if
	 * we hadn't set the callback.  Therefore, we're just
	 * "wrapping" OpenSSL's routine, not replacing it. */
	FUNC13(ssl_ctx, cert_verify_callback,
					  (void *) host);
#else // _WIN32
	(void)crt;
#endif // _WIN32

	// Create event base
	base = FUNC32();
	if (!base) {
		FUNC54("event_base_new()");
		goto error;
	}

	// Create OpenSSL bufferevent and stack evhttp on top of it
	ssl = FUNC18(ssl_ctx);
	if (ssl == NULL) {
		FUNC28("SSL_new()");
		goto error;
	}

	#ifdef SSL_CTRL_SET_TLSEXT_HOSTNAME
	// Set hostname for SNI extension
	SSL_set_tlsext_host_name(ssl, host);
	#endif

	if (FUNC58(scheme, "http") == 0) {
		bev = FUNC26(base, -1, BEV_OPT_CLOSE_ON_FREE);
	} else {
		type = HTTPS;
		bev = FUNC25(base, -1, ssl,
			BUFFEREVENT_SSL_CONNECTING,
			BEV_OPT_CLOSE_ON_FREE|BEV_OPT_DEFER_CALLBACKS);
	}

	if (bev == NULL) {
		FUNC52(stderr, "bufferevent_openssl_socket_new() failed\n");
		goto error;
	}

	FUNC24(bev, 1);

	// For simplicity, we let DNS resolution block. Everything else should be
	// asynchronous though.
	evcon = FUNC34(base, NULL, bev,
		host, port);
	if (evcon == NULL) {
		FUNC52(stderr, "evhttp_connection_base_bufferevent_new() failed\n");
		goto error;
	}

	if (retries > 0) {
		FUNC36(evcon, retries);
	}
	if (timeout >= 0) {
		FUNC37(evcon, timeout);
	}

	// Fire off the request
	req = FUNC41(http_request_done, bev);
	if (req == NULL) {
		FUNC52(stderr, "evhttp_request_new() failed\n");
		goto error;
	}

	output_headers = FUNC40(req);
	FUNC33(output_headers, "Host", host);
	FUNC33(output_headers, "Connection", "close");

	if (data_file) {
		/* NOTE: In production code, you'd probably want to use
		 * evbuffer_add_file() or evbuffer_add_file_segment(), to
		 * avoid needless copying. */
		FILE * f = FUNC51(data_file, "rb");
		char buf[1024];
		size_t s;
		size_t bytes = 0;

		if (!f) {
			FUNC61();
			goto error;
		}

		output_buffer = FUNC39(req);
		while ((s = FUNC53(buf, 1, sizeof(buf), f)) > 0) {
			FUNC29(output_buffer, buf, s);
			bytes += s;
		}
		FUNC49(buf, sizeof(buf)-1, "%lu", (unsigned long)bytes);
		FUNC33(output_headers, "Content-Length", buf);
		FUNC50(f);
	}

	r = FUNC38(evcon, req, data_file ? EVHTTP_REQ_POST : EVHTTP_REQ_GET, uri);
	if (r != 0) {
		FUNC52(stderr, "evhttp_make_request() failed\n");
		goto error;
	}

	FUNC30(base);
	goto cleanup;

error:
	ret = 1;
cleanup:
	if (evcon)
		FUNC35(evcon);
	if (http_uri)
		FUNC42(http_uri);
	FUNC31(base);

	if (ssl_ctx)
		FUNC10(ssl_ctx);
	if (type == HTTP && ssl)
		FUNC15(ssl);
#if OPENSSL_VERSION_NUMBER < 0x10100000L
	FUNC5();
	FUNC1();

#ifdef EVENT__HAVE_ERR_REMOVE_THREAD_STATE
	ERR_remove_thread_state(NULL);
#else
	FUNC3(0);
#endif
	FUNC0();

	FUNC56(FUNC9());
#endif /*OPENSSL_VERSION_NUMBER < 0x10100000L */

#ifdef _WIN32
	WSACleanup();
#endif

	return ret;
}