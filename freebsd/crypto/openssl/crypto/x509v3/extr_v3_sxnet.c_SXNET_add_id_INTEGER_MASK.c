#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  ids; int /*<<< orphan*/  version; } ;
struct TYPE_10__ {int /*<<< orphan*/ * zone; int /*<<< orphan*/  user; } ;
typedef  TYPE_1__ SXNETID ;
typedef  TYPE_2__ SXNET ;
typedef  int /*<<< orphan*/  ASN1_INTEGER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned char const*,int) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC6 () ; 
 int /*<<< orphan*/  X509V3_F_SXNET_ADD_ID_INTEGER ; 
 int /*<<< orphan*/  X509V3_R_DUPLICATE_ZONE_ID ; 
 int /*<<< orphan*/  X509V3_R_INVALID_NULL_ARGUMENT ; 
 int /*<<< orphan*/  X509V3_R_USER_TOO_LONG ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC9 (char const*) ; 

int FUNC10(SXNET **psx, ASN1_INTEGER *zone, const char *user,
                         int userlen)
{
    SXNET *sx = NULL;
    SXNETID *id = NULL;
    if (!psx || !zone || !user) {
        FUNC7(X509V3_F_SXNET_ADD_ID_INTEGER,
                  X509V3_R_INVALID_NULL_ARGUMENT);
        return 0;
    }
    if (userlen == -1)
        userlen = FUNC9(user);
    if (userlen > 64) {
        FUNC7(X509V3_F_SXNET_ADD_ID_INTEGER, X509V3_R_USER_TOO_LONG);
        return 0;
    }
    if (*psx == NULL) {
        if ((sx = FUNC6()) == NULL)
            goto err;
        if (!FUNC0(sx->version, 0))
            goto err;
        *psx = sx;
    } else
        sx = *psx;
    if (FUNC5(sx, zone)) {
        FUNC7(X509V3_F_SXNET_ADD_ID_INTEGER, X509V3_R_DUPLICATE_ZONE_ID);
        return 0;
    }

    if ((id = FUNC3()) == NULL)
        goto err;
    if (userlen == -1)
        userlen = FUNC9(user);

    if (!FUNC1(id->user, (const unsigned char *)user, userlen))
        goto err;
    if (!FUNC8(sx->ids, id))
        goto err;
    id->zone = zone;
    return 1;

 err:
    FUNC7(X509V3_F_SXNET_ADD_ID_INTEGER, ERR_R_MALLOC_FAILURE);
    FUNC2(id);
    FUNC4(sx);
    *psx = NULL;
    return 0;
}