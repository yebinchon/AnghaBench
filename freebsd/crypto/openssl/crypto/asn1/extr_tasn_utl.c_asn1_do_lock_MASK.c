#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int flags; int /*<<< orphan*/  ref_lock; int /*<<< orphan*/  ref_offset; } ;
struct TYPE_5__ {scalar_t__ itype; char* sname; TYPE_2__* funcs; } ;
typedef  int /*<<< orphan*/  CRYPTO_RWLOCK ;
typedef  int CRYPTO_REF_COUNT ;
typedef  int /*<<< orphan*/  ASN1_VALUE ;
typedef  TYPE_1__ ASN1_ITEM ;
typedef  TYPE_2__ ASN1_AUX ;

/* Variables and functions */
 int ASN1_AFLG_REFCOUNT ; 
 int /*<<< orphan*/  ASN1_F_ASN1_DO_LOCK ; 
 scalar_t__ ASN1_ITYPE_NDEF_SEQUENCE ; 
 scalar_t__ ASN1_ITYPE_SEQUENCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int*,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int*,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,TYPE_1__ const*,int,char*) ; 
 void* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC8(ASN1_VALUE **pval, int op, const ASN1_ITEM *it)
{
    const ASN1_AUX *aux;
    CRYPTO_REF_COUNT *lck;
    CRYPTO_RWLOCK **lock;
    int ret = -1;

    if ((it->itype != ASN1_ITYPE_SEQUENCE)
        && (it->itype != ASN1_ITYPE_NDEF_SEQUENCE))
        return 0;
    aux = it->funcs;
    if (!aux || !(aux->flags & ASN1_AFLG_REFCOUNT))
        return 0;
    lck = FUNC7(*pval, aux->ref_offset);
    lock = FUNC7(*pval, aux->ref_lock);

    switch (op) {
    case 0:
        *lck = ret = 1;
        *lock = FUNC3();
        if (*lock == NULL) {
            FUNC0(ASN1_F_ASN1_DO_LOCK, ERR_R_MALLOC_FAILURE);
            return -1;
        }
        break;
    case 1:
        if (!FUNC4(lck, &ret, *lock))
            return -1;
        break;
    case -1:
        if (!FUNC1(lck, &ret, *lock))
            return -1;  /* failed */
#ifdef REF_PRINT
        fprintf(stderr, "%p:%4d:%s\n", it, ret, it->sname);
#endif
        FUNC5(ret < 0);
        if (ret == 0) {
            FUNC2(*lock);
            *lock = NULL;
        }
        break;
    }

    return ret;
}