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
struct TYPE_4__ {int /*<<< orphan*/  sig_alg; int /*<<< orphan*/  hash_alg; } ;
typedef  TYPE_1__ SCT ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,...) ; 
 int NID_undef ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (TYPE_1__ const*) ; 

__attribute__((used)) static void FUNC3(const SCT *sct, BIO *out)
{
    int nid = FUNC2(sct);

    if (nid == NID_undef)
        FUNC0(out, "%02X%02X", sct->hash_alg, sct->sig_alg);
    else
        FUNC0(out, "%s", FUNC1(nid));
}