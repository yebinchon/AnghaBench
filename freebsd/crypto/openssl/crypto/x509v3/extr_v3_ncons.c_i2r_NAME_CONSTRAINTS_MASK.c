#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  X509V3_EXT_METHOD ;
struct TYPE_2__ {int /*<<< orphan*/  excludedSubtrees; int /*<<< orphan*/  permittedSubtrees; } ;
typedef  TYPE_1__ NAME_CONSTRAINTS ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,char*) ; 

__attribute__((used)) static int FUNC1(const X509V3_EXT_METHOD *method, void *a,
                                BIO *bp, int ind)
{
    NAME_CONSTRAINTS *ncons = a;
    FUNC0(method, ncons->permittedSubtrees,
                            bp, ind, "Permitted");
    FUNC0(method, ncons->excludedSubtrees,
                            bp, ind, "Excluded");
    return 1;
}