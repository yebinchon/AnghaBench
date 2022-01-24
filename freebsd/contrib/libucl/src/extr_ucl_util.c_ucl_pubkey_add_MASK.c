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
struct ucl_pubkey {int /*<<< orphan*/ * key; } ;
struct ucl_parser {int /*<<< orphan*/  keys; int /*<<< orphan*/  err; } ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (void*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct ucl_pubkey*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct ucl_pubkey* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int,struct ucl_pubkey*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,...) ; 

bool
FUNC9 (struct ucl_parser *parser, const unsigned char *key, size_t len)
{
#ifndef HAVE_OPENSSL
	FUNC8 (&parser->err, "cannot check signatures without openssl");
	return false;
#else
# if (OPENSSL_VERSION_NUMBER < 0x10000000L)
	ucl_create_err (&parser->err, "cannot check signatures, openssl version is unsupported");
	return EXIT_FAILURE;
# else
	struct ucl_pubkey *nkey;
	BIO *mem;

	mem = BIO_new_mem_buf ((void *)key, len);
	nkey = UCL_ALLOC (sizeof (struct ucl_pubkey));
	if (nkey == NULL) {
		ucl_create_err (&parser->err, "cannot allocate memory for key");
		return false;
	}
	nkey->key = PEM_read_bio_PUBKEY (mem, &nkey->key, NULL, NULL);
	BIO_free (mem);
	if (nkey->key == NULL) {
		UCL_FREE (sizeof (struct ucl_pubkey), nkey);
		ucl_create_err (&parser->err, "%s",
				ERR_error_string (ERR_get_error (), NULL));
		return false;
	}
	LL_PREPEND (parser->keys, nkey);
# endif
#endif
	return true;
}