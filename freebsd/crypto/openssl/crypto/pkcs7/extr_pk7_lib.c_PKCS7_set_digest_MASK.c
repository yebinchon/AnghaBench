#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  type; } ;
struct TYPE_8__ {TYPE_2__* digest; } ;
struct TYPE_11__ {TYPE_1__ d; } ;
struct TYPE_10__ {int /*<<< orphan*/  algorithm; TYPE_7__* parameter; } ;
struct TYPE_9__ {TYPE_3__* md; } ;
typedef  TYPE_4__ PKCS7 ;
typedef  int /*<<< orphan*/  EVP_MD ;

/* Variables and functions */
 TYPE_7__* FUNC0 () ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PKCS7_F_PKCS7_SET_DIGEST ; 
 int /*<<< orphan*/  PKCS7_R_WRONG_CONTENT_TYPE ; 
 scalar_t__ FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V_ASN1_NULL ; 

int FUNC5(PKCS7 *p7, const EVP_MD *md)
{
    if (FUNC3(p7)) {
        if ((p7->d.digest->md->parameter = FUNC0()) == NULL) {
            FUNC4(PKCS7_F_PKCS7_SET_DIGEST, ERR_R_MALLOC_FAILURE);
            return 0;
        }
        p7->d.digest->md->parameter->type = V_ASN1_NULL;
        p7->d.digest->md->algorithm = FUNC2(FUNC1(md));
        return 1;
    }

    FUNC4(PKCS7_F_PKCS7_SET_DIGEST, PKCS7_R_WRONG_CONTENT_TYPE);
    return 1;
}