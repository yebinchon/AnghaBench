#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct ocsp_fetch_options {char* url_path_string; int /*<<< orphan*/  pool_strings; int /*<<< orphan*/  nonce_flag; int /*<<< orphan*/  pass_strings; } ;
typedef  int /*<<< orphan*/  nonce ;
typedef  int /*<<< orphan*/  hx509_lock ;
typedef  int /*<<< orphan*/  hx509_certs ;
struct TYPE_6__ {scalar_t__ length; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ heim_octet_string ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  context ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,char const*,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,int,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__**,int /*<<< orphan*/ ,int) ; 

int
FUNC16(struct ocsp_fetch_options *opt, int argc, char **argv)
{
    hx509_certs reqcerts, pool;
    heim_octet_string req, nonce_data, *nonce = &nonce_data;
    hx509_lock lock;
    int i, ret;
    char *file;
    const char *url = "/";

    FUNC15(&nonce, 0, sizeof(nonce));

    FUNC12(context, &lock);
    FUNC14(lock, &opt->pass_strings);

    /* no nonce */
    if (!opt->nonce_flag)
	nonce = NULL;

    if (opt->url_path_string)
	url = opt->url_path_string;

    ret = FUNC10(context, "MEMORY:ocsp-pool", 0, NULL, &pool);
    if (ret) FUNC11(context, 1, ret, "hx509_certs_init: MEMORY");

    FUNC1(context, "ocsp-pool", pool, lock, &opt->pool_strings);

    file = argv[0];

    ret = FUNC10(context, "MEMORY:ocsp-req", 0, NULL, &reqcerts);
    if (ret) FUNC11(context, 1, ret, "hx509_certs_init: MEMORY");

    for (i = 1; i < argc; i++) {
	ret = FUNC8(context, reqcerts, lock, argv[i]);
	if (ret)
	    FUNC3(1, "hx509_certs_append: req: %s: %d", argv[i], ret);
    }

    ret = FUNC13(context, reqcerts, pool, NULL, NULL, &req, nonce);
    if (ret)
	FUNC3(1, "hx509_ocsp_request: req: %d", ret);

    {
	FILE *f;

	f = FUNC5(file, "w");
	if (f == NULL)
	    FUNC0();

	FUNC6(f,
		"POST %s HTTP/1.0\r\n"
		"Content-Type: application/ocsp-request\r\n"
		"Content-Length: %ld\r\n"
		"\r\n",
		url,
		(unsigned long)req.length);
	FUNC7(req.data, req.length, 1, f);
	FUNC4(f);
    }

    if (nonce)
	FUNC2(nonce);

    FUNC9(&reqcerts);
    FUNC9(&pool);

    return 0;
}