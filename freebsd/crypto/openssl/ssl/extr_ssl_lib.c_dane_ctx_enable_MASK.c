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
typedef  int /*<<< orphan*/  const* uint8_t ;
struct dane_ctx_st {int /*<<< orphan*/  const* mdmax; int /*<<< orphan*/  const** mdord; int /*<<< orphan*/  const** mdevp; } ;
struct TYPE_3__ {scalar_t__ nid; size_t mtype; int /*<<< orphan*/ * ord; } ;
typedef  int /*<<< orphan*/  EVP_MD ;

/* Variables and functions */
 int /*<<< orphan*/ * DANETLS_MATCHING_LAST ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/ * FUNC0 (scalar_t__) ; 
 scalar_t__ NID_undef ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/ ** FUNC2 (int) ; 
 size_t FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  SSL_F_DANE_CTX_ENABLE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* dane_mds ; 

__attribute__((used)) static int FUNC5(struct dane_ctx_st *dctx)
{
    const EVP_MD **mdevp;
    uint8_t *mdord;
    uint8_t mdmax = DANETLS_MATCHING_LAST;
    int n = ((int)mdmax) + 1;   /* int to handle PrivMatch(255) */
    size_t i;

    if (dctx->mdevp != NULL)
        return 1;

    mdevp = FUNC2(n * sizeof(*mdevp));
    mdord = FUNC2(n * sizeof(*mdord));

    if (mdord == NULL || mdevp == NULL) {
        FUNC1(mdord);
        FUNC1(mdevp);
        FUNC4(SSL_F_DANE_CTX_ENABLE, ERR_R_MALLOC_FAILURE);
        return 0;
    }

    /* Install default entries */
    for (i = 0; i < FUNC3(dane_mds); ++i) {
        const EVP_MD *md;

        if (dane_mds[i].nid == NID_undef ||
            (md = FUNC0(dane_mds[i].nid)) == NULL)
            continue;
        mdevp[dane_mds[i].mtype] = md;
        mdord[dane_mds[i].mtype] = dane_mds[i].ord;
    }

    dctx->mdevp = mdevp;
    dctx->mdord = mdord;
    dctx->mdmax = mdmax;

    return 1;
}