#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {scalar_t__ type; } ;
struct TYPE_15__ {scalar_t__ type; } ;
struct TYPE_14__ {int version; int /*<<< orphan*/  signerInfos; TYPE_1__* encapContentInfo; int /*<<< orphan*/  crls; int /*<<< orphan*/  certificates; } ;
struct TYPE_13__ {int version; TYPE_2__* sid; } ;
struct TYPE_12__ {scalar_t__ type; } ;
struct TYPE_11__ {int /*<<< orphan*/  eContentType; } ;
typedef  TYPE_3__ CMS_SignerInfo ;
typedef  TYPE_4__ CMS_SignedData ;
typedef  TYPE_5__ CMS_RevocationInfoChoice ;
typedef  TYPE_6__ CMS_CertificateChoices ;

/* Variables and functions */
 scalar_t__ CMS_CERTCHOICE_OTHER ; 
 scalar_t__ CMS_CERTCHOICE_V1ACERT ; 
 scalar_t__ CMS_CERTCHOICE_V2ACERT ; 
 scalar_t__ CMS_REVCHOICE_OTHER ; 
 scalar_t__ CMS_SIGNERINFO_KEYIDENTIFIER ; 
 scalar_t__ NID_pkcs7_data ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC7(CMS_SignedData *sd)
{
    int i;
    CMS_CertificateChoices *cch;
    CMS_RevocationInfoChoice *rch;
    CMS_SignerInfo *si;

    for (i = 0; i < FUNC1(sd->certificates); i++) {
        cch = FUNC2(sd->certificates, i);
        if (cch->type == CMS_CERTCHOICE_OTHER) {
            if (sd->version < 5)
                sd->version = 5;
        } else if (cch->type == CMS_CERTCHOICE_V2ACERT) {
            if (sd->version < 4)
                sd->version = 4;
        } else if (cch->type == CMS_CERTCHOICE_V1ACERT) {
            if (sd->version < 3)
                sd->version = 3;
        }
    }

    for (i = 0; i < FUNC3(sd->crls); i++) {
        rch = FUNC4(sd->crls, i);
        if (rch->type == CMS_REVCHOICE_OTHER) {
            if (sd->version < 5)
                sd->version = 5;
        }
    }

    if ((FUNC0(sd->encapContentInfo->eContentType) != NID_pkcs7_data)
        && (sd->version < 3))
        sd->version = 3;

    for (i = 0; i < FUNC5(sd->signerInfos); i++) {
        si = FUNC6(sd->signerInfos, i);
        if (si->sid->type == CMS_SIGNERINFO_KEYIDENTIFIER) {
            if (si->version < 3)
                si->version = 3;
            if (sd->version < 3)
                sd->version = 3;
        } else if (si->version < 1)
            si->version = 1;
    }

    if (sd->version < 1)
        sd->version = 1;

}