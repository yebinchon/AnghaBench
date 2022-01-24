#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_2__* cert; } ;
struct TYPE_7__ {TYPE_1__* key; } ;
struct TYPE_6__ {unsigned char* serverinfo; size_t serverinfo_length; } ;
typedef  TYPE_3__ SSL_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  ERR_R_PASSED_NULL_PARAMETER ; 
 unsigned char* FUNC0 (unsigned char*,size_t) ; 
 int /*<<< orphan*/  SSL_F_SSL_CTX_USE_SERVERINFO_EX ; 
 int /*<<< orphan*/  SSL_R_INVALID_SERVERINFO_DATA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,unsigned char const*,size_t,TYPE_3__*) ; 

int FUNC4(SSL_CTX *ctx, unsigned int version,
                              const unsigned char *serverinfo,
                              size_t serverinfo_length)
{
    unsigned char *new_serverinfo;

    if (ctx == NULL || serverinfo == NULL || serverinfo_length == 0) {
        FUNC1(SSL_F_SSL_CTX_USE_SERVERINFO_EX, ERR_R_PASSED_NULL_PARAMETER);
        return 0;
    }
    if (!FUNC3(version, serverinfo, serverinfo_length,
                                   NULL)) {
        FUNC1(SSL_F_SSL_CTX_USE_SERVERINFO_EX, SSL_R_INVALID_SERVERINFO_DATA);
        return 0;
    }
    if (ctx->cert->key == NULL) {
        FUNC1(SSL_F_SSL_CTX_USE_SERVERINFO_EX, ERR_R_INTERNAL_ERROR);
        return 0;
    }
    new_serverinfo = FUNC0(ctx->cert->key->serverinfo,
                                     serverinfo_length);
    if (new_serverinfo == NULL) {
        FUNC1(SSL_F_SSL_CTX_USE_SERVERINFO_EX, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    ctx->cert->key->serverinfo = new_serverinfo;
    FUNC2(ctx->cert->key->serverinfo, serverinfo, serverinfo_length);
    ctx->cert->key->serverinfo_length = serverinfo_length;

    /*
     * Now that the serverinfo is validated and stored, go ahead and
     * register callbacks.
     */
    if (!FUNC3(version, serverinfo, serverinfo_length,
                                   ctx)) {
        FUNC1(SSL_F_SSL_CTX_USE_SERVERINFO_EX, SSL_R_INVALID_SERVERINFO_DATA);
        return 0;
    }
    return 1;
}