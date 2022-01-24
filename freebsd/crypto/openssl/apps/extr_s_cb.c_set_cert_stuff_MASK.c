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
typedef  int /*<<< orphan*/  SSL_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SSL_FILETYPE_PEM ; 
 int /*<<< orphan*/  bio_err ; 

int FUNC5(SSL_CTX *ctx, char *cert_file, char *key_file)
{
    if (cert_file != NULL) {
        if (FUNC4(ctx, cert_file,
                                         SSL_FILETYPE_PEM) <= 0) {
            FUNC0(bio_err, "unable to get certificate from '%s'\n",
                       cert_file);
            FUNC1(bio_err);
            return 0;
        }
        if (key_file == NULL)
            key_file = cert_file;
        if (FUNC3(ctx, key_file, SSL_FILETYPE_PEM) <= 0) {
            FUNC0(bio_err, "unable to get private key from '%s'\n",
                       key_file);
            FUNC1(bio_err);
            return 0;
        }

        /*
         * If we are using DSA, we can copy the parameters from the private
         * key
         */

        /*
         * Now we know that a key and cert have been set against the SSL
         * context
         */
        if (!FUNC2(ctx)) {
            FUNC0(bio_err,
                       "Private key does not match the certificate public key\n");
            return 0;
        }
    }
    return 1;
}