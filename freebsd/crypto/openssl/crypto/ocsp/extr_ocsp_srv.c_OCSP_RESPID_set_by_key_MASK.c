#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  X509 ;
struct TYPE_4__ {int /*<<< orphan*/ * byKey; } ;
struct TYPE_5__ {TYPE_1__ value; int /*<<< orphan*/  type; } ;
typedef  TYPE_2__ OCSP_RESPID ;
typedef  int /*<<< orphan*/  ASN1_OCTET_STRING ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int SHA_DIGEST_LENGTH ; 
 int /*<<< orphan*/  V_OCSP_RESPID_KEY ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ *) ; 

int FUNC5(OCSP_RESPID *respid, X509 *cert)
{
    ASN1_OCTET_STRING *byKey = NULL;
    unsigned char md[SHA_DIGEST_LENGTH];

    /* RFC2560 requires SHA1 */
    if (!FUNC4(cert, FUNC3(), md, NULL))
        return 0;

    byKey = FUNC1();
    if (byKey == NULL)
        return 0;

    if (!(FUNC2(byKey, md, SHA_DIGEST_LENGTH))) {
        FUNC0(byKey);
        return 0;
    }

    respid->type = V_OCSP_RESPID_KEY;
    respid->value.byKey = byKey;

    return 1;
}