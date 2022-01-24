#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int sign_id; int hash_id; int pkey_id; } ;
typedef  TYPE_1__ nid_triple ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * sig_app ; 
 int /*<<< orphan*/  sigoid_srt ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,int) ; 

int FUNC4(int signid, int *pdig_nid, int *ppkey_nid)
{
    nid_triple tmp;
    const nid_triple *rv = NULL;
    tmp.sign_id = signid;

    if (sig_app != NULL) {
        int idx = FUNC2(sig_app, &tmp);
        rv = FUNC3(sig_app, idx);
    }
#ifndef OBJ_XREF_TEST2
    if (rv == NULL) {
        rv = FUNC0(&tmp, sigoid_srt, FUNC1(sigoid_srt));
    }
#endif
    if (rv == NULL)
        return 0;
    if (pdig_nid)
        *pdig_nid = rv->hash_id;
    if (ppkey_nid)
        *ppkey_nid = rv->pkey_id;
    return 1;
}