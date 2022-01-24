#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct bfd_header_t {int dummy; } ;
struct bfd_auth_header_t {int auth_type; int /*<<< orphan*/  auth_len; } ;
struct TYPE_5__ {int /*<<< orphan*/  ndo_snapend; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
#define  AUTH_MD5 132 
 int /*<<< orphan*/  AUTH_MD5_FIELD_LEN ; 
 int AUTH_MD5_HASH_LEN ; 
#define  AUTH_MET_MD5 131 
#define  AUTH_MET_SHA1 130 
#define  AUTH_PASSWORD 129 
 int /*<<< orphan*/  AUTH_PASSWORD_FIELD_MAX_LEN ; 
 int /*<<< orphan*/  AUTH_PASSWORD_FIELD_MIN_LEN ; 
#define  AUTH_SHA1 128 
 int /*<<< orphan*/  AUTH_SHA1_FIELD_LEN ; 
 int AUTH_SHA1_HASH_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct bfd_auth_header_t const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const,int) ; 
 int /*<<< orphan*/  bfd_v1_authentication_values ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int
FUNC6(netdissect_options *ndo, register const u_char *pptr)
{
        const struct bfd_auth_header_t *bfd_auth_header;
        int i;

        pptr += sizeof (const struct bfd_header_t);
        bfd_auth_header = (const struct bfd_auth_header_t *)pptr;
        FUNC2(*bfd_auth_header);
        FUNC1((ndo, "\n\tAuthentication: %s (%u), length: %u",
                 FUNC5(bfd_v1_authentication_values,"Unknown",bfd_auth_header->auth_type),
                 bfd_auth_header->auth_type,
                 bfd_auth_header->auth_len));
                pptr += 2;
                FUNC1((ndo, "\n\t  Auth Key ID: %d", *pptr));

        switch(bfd_auth_header->auth_type) {
            case AUTH_PASSWORD:
/*
 *    Simple Password Authentication Section Format
 *
 *     0                   1                   2                   3
 *     0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1
 *    +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 *    |   Auth Type   |   Auth Len    |  Auth Key ID  |  Password...  |
 *    +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 *    |                              ...                              |
 *    +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 */
                if (bfd_auth_header->auth_len < AUTH_PASSWORD_FIELD_MIN_LEN ||
                    bfd_auth_header->auth_len > AUTH_PASSWORD_FIELD_MAX_LEN) {
                    FUNC1((ndo, "[invalid length %d]",
                             bfd_auth_header->auth_len));
                    break;
                }
                pptr++;
                FUNC1((ndo, ", Password: "));
                /* the length is equal to the password length plus three */
                if (FUNC4(ndo, pptr, bfd_auth_header->auth_len - 3,
                              ndo->ndo_snapend))
                    goto trunc;
                break;
            case AUTH_MD5:
            case AUTH_MET_MD5:
/*
 *    Keyed MD5 and Meticulous Keyed MD5 Authentication Section Format
 *
 *     0                   1                   2                   3
 *     0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1
 *    +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 *    |   Auth Type   |   Auth Len    |  Auth Key ID  |   Reserved    |
 *    +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 *    |                        Sequence Number                        |
 *    +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 *    |                      Auth Key/Digest...                       |
 *    +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 *    |                              ...                              |
 *    +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 */
                if (bfd_auth_header->auth_len != AUTH_MD5_FIELD_LEN) {
                    FUNC1((ndo, "[invalid length %d]",
                             bfd_auth_header->auth_len));
                    break;
                }
                pptr += 2;
                FUNC3(*pptr, 4);
                FUNC1((ndo, ", Sequence Number: 0x%08x", FUNC0(pptr)));
                pptr += 4;
                FUNC3(*pptr, AUTH_MD5_HASH_LEN);
                FUNC1((ndo, "\n\t  Digest: "));
                for(i = 0; i < AUTH_MD5_HASH_LEN; i++)
                    FUNC1((ndo, "%02x", pptr[i]));
                break;
            case AUTH_SHA1:
            case AUTH_MET_SHA1:
/*
 *    Keyed SHA1 and Meticulous Keyed SHA1 Authentication Section Format
 *
 *     0                   1                   2                   3
 *     0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1
 *    +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 *    |   Auth Type   |   Auth Len    |  Auth Key ID  |   Reserved    |
 *    +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 *    |                        Sequence Number                        |
 *    +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 *    |                       Auth Key/Hash...                        |
 *    +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 *    |                              ...                              |
 *    +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 */
                if (bfd_auth_header->auth_len != AUTH_SHA1_FIELD_LEN) {
                    FUNC1((ndo, "[invalid length %d]",
                             bfd_auth_header->auth_len));
                    break;
                }
                pptr += 2;
                FUNC3(*pptr, 4);
                FUNC1((ndo, ", Sequence Number: 0x%08x", FUNC0(pptr)));
                pptr += 4;
                FUNC3(*pptr, AUTH_SHA1_HASH_LEN);
                FUNC1((ndo, "\n\t  Hash: "));
                for(i = 0; i < AUTH_SHA1_HASH_LEN; i++)
                    FUNC1((ndo, "%02x", pptr[i]));
                break;
        }
        return 0;

trunc:
        return 1;
}