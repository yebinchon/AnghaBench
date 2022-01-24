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
struct TYPE_11__ {int nid; int uptodate; int /*<<< orphan*/ * funct; int /*<<< orphan*/  sk; } ;
struct TYPE_10__ {int /*<<< orphan*/  piles; } ;
typedef  TYPE_1__ ENGINE_TABLE ;
typedef  TYPE_2__ ENGINE_PILE ;
typedef  int /*<<< orphan*/  ENGINE_CLEANUP_CB ;
typedef  int /*<<< orphan*/  ENGINE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENGINE_F_ENGINE_TABLE_REGISTER ; 
 int /*<<< orphan*/  ENGINE_R_INIT_FAILED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 TYPE_2__* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  global_engine_lock ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__**,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 TYPE_2__* FUNC10 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC15(ENGINE_TABLE **table, ENGINE_CLEANUP_CB *cleanup,
                          ENGINE *e, const int *nids, int num_nids,
                          int setdefault)
{
    int ret = 0, added = 0;
    ENGINE_PILE tmplate, *fnd;
    FUNC1(global_engine_lock);
    if (!(*table))
        added = 1;
    if (!FUNC8(table, 1))
        goto end;
    if (added)
        /* The cleanup callback needs to be added */
        FUNC5(cleanup);
    while (num_nids--) {
        tmplate.nid = *nids;
        fnd = FUNC10(&(*table)->piles, &tmplate);
        if (!fnd) {
            fnd = FUNC4(sizeof(*fnd));
            if (fnd == NULL)
                goto end;
            fnd->uptodate = 1;
            fnd->nid = *nids;
            fnd->sk = FUNC13();
            if (!fnd->sk) {
                FUNC3(fnd);
                goto end;
            }
            fnd->funct = NULL;
            (void)FUNC9(&(*table)->piles, fnd);
            if (FUNC10(&(*table)->piles, &tmplate) != fnd) {
                FUNC12(fnd->sk);
                FUNC3(fnd);
                goto end;
            }
        }
        /* A registration shouldn't add duplicate entries */
        (void)FUNC11(fnd->sk, e);
        /*
         * if 'setdefault', this ENGINE goes to the head of the list
         */
        if (!FUNC14(fnd->sk, e))
            goto end;
        /* "touch" this ENGINE_PILE */
        fnd->uptodate = 0;
        if (setdefault) {
            if (!FUNC7(e)) {
                FUNC2(ENGINE_F_ENGINE_TABLE_REGISTER,
                          ENGINE_R_INIT_FAILED);
                goto end;
            }
            if (fnd->funct)
                FUNC6(fnd->funct, 0);
            fnd->funct = e;
            fnd->uptodate = 1;
        }
        nids++;
    }
    ret = 1;
 end:
    FUNC0(global_engine_lock);
    return ret;
}