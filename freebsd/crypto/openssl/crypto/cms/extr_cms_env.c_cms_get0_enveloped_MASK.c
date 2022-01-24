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
struct TYPE_4__ {int /*<<< orphan*/ * envelopedData; } ;
struct TYPE_5__ {TYPE_1__ d; int /*<<< orphan*/  contentType; } ;
typedef  int /*<<< orphan*/  CMS_EnvelopedData ;
typedef  TYPE_2__ CMS_ContentInfo ;

/* Variables and functions */
 int /*<<< orphan*/  CMS_F_CMS_GET0_ENVELOPED ; 
 int /*<<< orphan*/  CMS_R_CONTENT_TYPE_NOT_ENVELOPED_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ NID_pkcs7_enveloped ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

CMS_EnvelopedData *FUNC2(CMS_ContentInfo *cms)
{
    if (FUNC1(cms->contentType) != NID_pkcs7_enveloped) {
        FUNC0(CMS_F_CMS_GET0_ENVELOPED,
               CMS_R_CONTENT_TYPE_NOT_ENVELOPED_DATA);
        return NULL;
    }
    return cms->d.envelopedData;
}