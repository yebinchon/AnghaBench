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
struct TYPE_5__ {int /*<<< orphan*/  iPAddress; int /*<<< orphan*/  uniformResourceIdentifier; int /*<<< orphan*/  rfc822Name; int /*<<< orphan*/  dNSName; int /*<<< orphan*/  directoryName; } ;
struct TYPE_6__ {int type; TYPE_1__ d; } ;
typedef  TYPE_2__ GENERAL_NAME ;

/* Variables and functions */
#define  GEN_DIRNAME 132 
#define  GEN_DNS 131 
#define  GEN_EMAIL 130 
#define  GEN_IPADD 129 
#define  GEN_URI 128 
 int X509_V_ERR_UNSUPPORTED_CONSTRAINT_TYPE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(GENERAL_NAME *gen, GENERAL_NAME *base)
{
    switch (base->type) {
    case GEN_DIRNAME:
        return FUNC0(gen->d.directoryName, base->d.directoryName);

    case GEN_DNS:
        return FUNC1(gen->d.dNSName, base->d.dNSName);

    case GEN_EMAIL:
        return FUNC2(gen->d.rfc822Name, base->d.rfc822Name);

    case GEN_URI:
        return FUNC4(gen->d.uniformResourceIdentifier,
                      base->d.uniformResourceIdentifier);

    case GEN_IPADD:
        return FUNC3(gen->d.iPAddress, base->d.iPAddress);

    default:
        return X509_V_ERR_UNSUPPORTED_CONSTRAINT_TYPE;
    }

}