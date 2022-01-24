#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_7__ {TYPE_1__* ctx; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* keylog_callback ) (TYPE_2__*,char const*) ;} ;
typedef  TYPE_2__ SSL ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (char*,size_t) ; 
 char* FUNC1 (size_t) ; 
 int /*<<< orphan*/  SSL_AD_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SSL_F_NSS_KEYLOG_INT ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int const) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 size_t FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char const*) ; 

__attribute__((used)) static int FUNC7(const char *prefix,
                          SSL *ssl,
                          const uint8_t *parameter_1,
                          size_t parameter_1_len,
                          const uint8_t *parameter_2,
                          size_t parameter_2_len)
{
    char *out = NULL;
    char *cursor = NULL;
    size_t out_len = 0;
    size_t i;
    size_t prefix_len;

    if (ssl->ctx->keylog_callback == NULL)
        return 1;

    /*
     * Our output buffer will contain the following strings, rendered with
     * space characters in between, terminated by a NULL character: first the
     * prefix, then the first parameter, then the second parameter. The
     * meaning of each parameter depends on the specific key material being
     * logged. Note that the first and second parameters are encoded in
     * hexadecimal, so we need a buffer that is twice their lengths.
     */
    prefix_len = FUNC5(prefix);
    out_len = prefix_len + (2 * parameter_1_len) + (2 * parameter_2_len) + 3;
    if ((out = cursor = FUNC1(out_len)) == NULL) {
        FUNC2(ssl, SSL_AD_INTERNAL_ERROR, SSL_F_NSS_KEYLOG_INT,
                 ERR_R_MALLOC_FAILURE);
        return 0;
    }

    FUNC4(cursor, prefix);
    cursor += prefix_len;
    *cursor++ = ' ';

    for (i = 0; i < parameter_1_len; i++) {
        FUNC3(cursor, "%02x", parameter_1[i]);
        cursor += 2;
    }
    *cursor++ = ' ';

    for (i = 0; i < parameter_2_len; i++) {
        FUNC3(cursor, "%02x", parameter_2[i]);
        cursor += 2;
    }
    *cursor = '\0';

    ssl->ctx->keylog_callback(ssl, (const char *)out);
    FUNC0(out, out_len);
    return 1;

}