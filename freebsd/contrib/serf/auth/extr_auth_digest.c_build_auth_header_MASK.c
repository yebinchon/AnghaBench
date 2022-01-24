#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char const* opaque; char const* algorithm; int /*<<< orphan*/  nonce; int /*<<< orphan*/  ha1; int /*<<< orphan*/  qop; int /*<<< orphan*/  cnonce; int /*<<< orphan*/  digest_nc; int /*<<< orphan*/  pool; int /*<<< orphan*/  username; int /*<<< orphan*/  realm; } ;
typedef  TYPE_1__ digest_authn_info_t ;
typedef  scalar_t__ apr_status_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int APR_MD5_DIGESTSIZE ; 
 scalar_t__ APR_SUCCESS ; 
 scalar_t__ FUNC0 (unsigned char*,char const*,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ *,char*,char*,char const*,...) ; 
 scalar_t__ FUNC2 (char const**,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC3 (unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 

__attribute__((used)) static apr_status_t
FUNC6(const char **out_header,
                  digest_authn_info_t *digest_info,
                  const char *path,
                  const char *method,
                  apr_pool_t *pool)
{
    char *hdr;
    const char *ha2;
    const char *response;
    unsigned char response_hdr[APR_MD5_DIGESTSIZE];
    const char *response_hdr_hex;
    apr_status_t status;

    status = FUNC2(&ha2, path, method, digest_info->qop, pool);
    if (status)
        return status;

    hdr = FUNC1(pool,
                       "Digest realm=\"%s\","
                       " username=\"%s\","
                       " nonce=\"%s\","
                       " uri=\"%s\"",
                       digest_info->realm, digest_info->username,
                       digest_info->nonce,
                       path);

    if (digest_info->qop) {
        if (! digest_info->cnonce)
            digest_info->cnonce = FUNC4(digest_info->pool);

        hdr = FUNC1(pool, "%s, nc=%08x, cnonce=\"%s\", qop=\"%s\"",
                           hdr,
                           digest_info->digest_nc,
                           digest_info->cnonce,
                           digest_info->qop);

        /* Build the response header:
           MD5 hash of the combined HA1 result, server nonce (nonce),
           request counter (nc), client nonce (cnonce),
           quality of protection code (qop) and HA2 result. */
        response = FUNC1(pool, "%s:%s:%08x:%s:%s:%s",
                                digest_info->ha1, digest_info->nonce,
                                digest_info->digest_nc,
                                digest_info->cnonce, digest_info->qop, ha2);
    } else {
        /* Build the response header:
           MD5 hash of the combined HA1 result, server nonce (nonce)
           and HA2 result. */
        response = FUNC1(pool, "%s:%s:%s",
                                digest_info->ha1, digest_info->nonce, ha2);
    }

    status = FUNC0(response_hdr, response, FUNC5(response));
    if (status)
        return status;

    response_hdr_hex = FUNC3(response_hdr, pool);

    hdr = FUNC1(pool, "%s, response=\"%s\"", hdr, response_hdr_hex);

    if (digest_info->opaque) {
        hdr = FUNC1(pool, "%s, opaque=\"%s\"", hdr,
                           digest_info->opaque);
    }
    if (digest_info->algorithm) {
        hdr = FUNC1(pool, "%s, algorithm=\"%s\"", hdr,
                           digest_info->algorithm);
    }

    *out_header = hdr;

    return APR_SUCCESS;
}