#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  algorithm; } ;
struct TYPE_5__ {int /*<<< orphan*/  serialNumber; int /*<<< orphan*/  issuerKeyHash; int /*<<< orphan*/  issuerNameHash; TYPE_1__ hashAlgorithm; } ;
typedef  TYPE_2__ OCSP_CERTID ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(BIO *bp, OCSP_CERTID *a, int indent)
{
    FUNC0(bp, "%*sCertificate ID:\n", indent, "");
    indent += 2;
    FUNC0(bp, "%*sHash Algorithm: ", indent, "");
    FUNC2(bp, a->hashAlgorithm.algorithm);
    FUNC0(bp, "\n%*sIssuer Name Hash: ", indent, "");
    FUNC3(bp, &a->issuerNameHash, 0);
    FUNC0(bp, "\n%*sIssuer Key Hash: ", indent, "");
    FUNC3(bp, &a->issuerKeyHash, 0);
    FUNC0(bp, "\n%*sSerial Number: ", indent, "");
    FUNC1(bp, &a->serialNumber);
    FUNC0(bp, "\n");
    return 1;
}