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
struct TYPE_6__ {int pbe_type; int pbe_nid; int cipher_nid; int md_nid; int /*<<< orphan*/ * keygen; } ;
typedef  int /*<<< orphan*/  EVP_PBE_KEYGEN ;
typedef  TYPE_1__ EVP_PBE_CTL ;

/* Variables and functions */
 int NID_undef ; 
 TYPE_1__* FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  builtin_pbe ; 
 int /*<<< orphan*/ * pbe_algs ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,int) ; 

int FUNC4(int type, int pbe_nid,
                 int *pcnid, int *pmnid, EVP_PBE_KEYGEN **pkeygen)
{
    EVP_PBE_CTL *pbetmp = NULL, pbelu;
    int i;
    if (pbe_nid == NID_undef)
        return 0;

    pbelu.pbe_type = type;
    pbelu.pbe_nid = pbe_nid;

    if (pbe_algs != NULL) {
        i = FUNC2(pbe_algs, &pbelu);
        pbetmp = FUNC3(pbe_algs, i);
    }
    if (pbetmp == NULL) {
        pbetmp = FUNC0(&pbelu, builtin_pbe, FUNC1(builtin_pbe));
    }
    if (pbetmp == NULL)
        return 0;
    if (pcnid)
        *pcnid = pbetmp->cipher_nid;
    if (pmnid)
        *pmnid = pbetmp->md_nid;
    if (pkeygen)
        *pkeygen = pbetmp->keygen;
    return 1;
}