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
typedef  int /*<<< orphan*/  UI_METHOD ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  ENGINE ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static EVP_PKEY *FUNC4(ENGINE *eng, const char *key_id,
                                      UI_METHOD *ui_method,
                                      void *callback_data)
{
    BIO *in;
    EVP_PKEY *key;
    FUNC3(stderr, "(TEST_ENG_OPENSSL_PKEY)Loading Private key %s\n",
            key_id);
    in = FUNC1(key_id, "r");
    if (!in)
        return NULL;
    key = FUNC2(in, NULL, 0, NULL);
    FUNC0(in);
    return key;
}