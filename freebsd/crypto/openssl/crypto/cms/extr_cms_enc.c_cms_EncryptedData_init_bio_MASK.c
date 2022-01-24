#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ cipher; } ;
struct TYPE_6__ {TYPE_2__* encryptedData; } ;
struct TYPE_8__ {TYPE_1__ d; } ;
struct TYPE_7__ {int version; TYPE_5__* encryptedContentInfo; scalar_t__ unprotectedAttrs; } ;
typedef  TYPE_2__ CMS_EncryptedData ;
typedef  TYPE_3__ CMS_ContentInfo ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_5__*) ; 

BIO *FUNC1(CMS_ContentInfo *cms)
{
    CMS_EncryptedData *enc = cms->d.encryptedData;
    if (enc->encryptedContentInfo->cipher && enc->unprotectedAttrs)
        enc->version = 2;
    return FUNC0(enc->encryptedContentInfo);
}