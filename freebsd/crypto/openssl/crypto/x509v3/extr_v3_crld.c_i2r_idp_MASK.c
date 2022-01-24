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
struct TYPE_2__ {scalar_t__ onlyuser; scalar_t__ onlyCA; scalar_t__ indirectCRL; scalar_t__ onlyattr; scalar_t__ onlysomereasons; scalar_t__ distpoint; } ;
typedef  TYPE_1__ ISSUING_DIST_POINT ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,scalar_t__,int) ; 

__attribute__((used)) static int FUNC3(const X509V3_EXT_METHOD *method, void *pidp, BIO *out,
                   int indent)
{
    ISSUING_DIST_POINT *idp = pidp;
    if (idp->distpoint)
        FUNC1(out, idp->distpoint, indent);
    if (idp->onlyuser > 0)
        FUNC0(out, "%*sOnly User Certificates\n", indent, "");
    if (idp->onlyCA > 0)
        FUNC0(out, "%*sOnly CA Certificates\n", indent, "");
    if (idp->indirectCRL > 0)
        FUNC0(out, "%*sIndirect CRL\n", indent, "");
    if (idp->onlysomereasons)
        FUNC2(out, "Only Some Reasons", idp->onlysomereasons, indent);
    if (idp->onlyattr > 0)
        FUNC0(out, "%*sOnly Attribute Certificates\n", indent, "");
    if (!idp->distpoint && (idp->onlyuser <= 0) && (idp->onlyCA <= 0)
        && (idp->indirectCRL <= 0) && !idp->onlysomereasons
        && (idp->onlyattr <= 0))
        FUNC0(out, "%*s<EMPTY>\n", indent, "");

    return 1;
}