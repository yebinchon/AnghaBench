#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ version; int sig_len; int /*<<< orphan*/  sig; int /*<<< orphan*/  sig_alg; int /*<<< orphan*/  hash_alg; } ;
typedef  TYPE_1__ SCT ;

/* Variables and functions */
 int /*<<< orphan*/  CT_F_I2O_SCT_SIGNATURE ; 
 int /*<<< orphan*/  CT_R_SCT_INVALID_SIGNATURE ; 
 int /*<<< orphan*/  CT_R_UNSUPPORTED_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*) ; 
 unsigned char* FUNC2 (size_t) ; 
 scalar_t__ SCT_VERSION_V1 ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int,unsigned char*) ; 

int FUNC6(const SCT *sct, unsigned char **out)
{
    size_t len;
    unsigned char *p = NULL, *pstart = NULL;

    if (!FUNC3(sct)) {
        FUNC0(CT_F_I2O_SCT_SIGNATURE, CT_R_SCT_INVALID_SIGNATURE);
        goto err;
    }

    if (sct->version != SCT_VERSION_V1) {
        FUNC0(CT_F_I2O_SCT_SIGNATURE, CT_R_UNSUPPORTED_VERSION);
        goto err;
    }

    /*
    * (1 byte) Hash algorithm
    * (1 byte) Signature algorithm
    * (2 bytes + ?) Signature
    */
    len = 4 + sct->sig_len;

    if (out != NULL) {
        if (*out != NULL) {
            p = *out;
            *out += len;
        } else {
            pstart = p = FUNC2(len);
            if (p == NULL) {
                FUNC0(CT_F_I2O_SCT_SIGNATURE, ERR_R_MALLOC_FAILURE);
                goto err;
            }
            *out = p;
        }

        *p++ = sct->hash_alg;
        *p++ = sct->sig_alg;
        FUNC5(sct->sig_len, p);
        FUNC4(p, sct->sig, sct->sig_len);
    }

    return len;
err:
    FUNC1(pstart);
    return -1;
}