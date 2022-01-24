#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  ptr; int /*<<< orphan*/ * data; } ;
struct TYPE_11__ {TYPE_1__ d; } ;
struct TYPE_9__ {TYPE_2__* sign; } ;
struct TYPE_10__ {long detached; TYPE_3__ d; int /*<<< orphan*/  type; } ;
struct TYPE_8__ {TYPE_5__* contents; } ;
typedef  TYPE_4__ PKCS7 ;
typedef  int /*<<< orphan*/  ASN1_OCTET_STRING ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int NID_pkcs7_signed ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PKCS7_F_PKCS7_CTRL ; 
#define  PKCS7_OP_GET_DETACHED_SIGNATURE 129 
#define  PKCS7_OP_SET_DETACHED_SIGNATURE 128 
 int /*<<< orphan*/  PKCS7_R_OPERATION_NOT_SUPPORTED_ON_THIS_TYPE ; 
 int /*<<< orphan*/  PKCS7_R_UNKNOWN_OPERATION ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

long FUNC4(PKCS7 *p7, int cmd, long larg, char *parg)
{
    int nid;
    long ret;

    nid = FUNC1(p7->type);

    switch (cmd) {
    /* NOTE(emilia): does not support detached digested data. */
    case PKCS7_OP_SET_DETACHED_SIGNATURE:
        if (nid == NID_pkcs7_signed) {
            ret = p7->detached = (int)larg;
            if (ret && FUNC2(p7->d.sign->contents)) {
                ASN1_OCTET_STRING *os;
                os = p7->d.sign->contents->d.data;
                FUNC0(os);
                p7->d.sign->contents->d.data = NULL;
            }
        } else {
            FUNC3(PKCS7_F_PKCS7_CTRL,
                     PKCS7_R_OPERATION_NOT_SUPPORTED_ON_THIS_TYPE);
            ret = 0;
        }
        break;
    case PKCS7_OP_GET_DETACHED_SIGNATURE:
        if (nid == NID_pkcs7_signed) {
            if (!p7->d.sign || !p7->d.sign->contents->d.ptr)
                ret = 1;
            else
                ret = 0;

            p7->detached = ret;
        } else {
            FUNC3(PKCS7_F_PKCS7_CTRL,
                     PKCS7_R_OPERATION_NOT_SUPPORTED_ON_THIS_TYPE);
            ret = 0;
        }

        break;
    default:
        FUNC3(PKCS7_F_PKCS7_CTRL, PKCS7_R_UNKNOWN_OPERATION);
        ret = 0;
    }
    return ret;
}