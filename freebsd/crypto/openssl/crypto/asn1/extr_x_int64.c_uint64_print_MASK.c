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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_3__ {int size; } ;
typedef  int /*<<< orphan*/  BIO ;
typedef  int /*<<< orphan*/  ASN1_VALUE ;
typedef  int /*<<< orphan*/  ASN1_PCTX ;
typedef  TYPE_1__ ASN1_ITEM ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int INTxx_FLAG_SIGNED ; 

__attribute__((used)) static int FUNC1(BIO *out, ASN1_VALUE **pval, const ASN1_ITEM *it,
                        int indent, const ASN1_PCTX *pctx)
{
    if ((it->size & INTxx_FLAG_SIGNED) == INTxx_FLAG_SIGNED)
        return FUNC0(out, "%jd\n", **(int64_t **)pval);
    return FUNC0(out, "%ju\n", **(uint64_t **)pval);
}