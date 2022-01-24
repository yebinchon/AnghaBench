#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int nid; int flags; } ;
struct TYPE_7__ {int /*<<< orphan*/  unsignedAttrs; int /*<<< orphan*/  signedAttrs; } ;
typedef  TYPE_1__ CMS_SignerInfo ;

/* Variables and functions */
 int /*<<< orphan*/  CMS_ATTR_F_SIGNED ; 
 int /*<<< orphan*/  CMS_ATTR_F_UNSIGNED ; 
 int /*<<< orphan*/  CMS_F_CMS_SI_CHECK_ATTRIBUTES ; 
 int /*<<< orphan*/  CMS_R_ATTRIBUTE_ERROR ; 
 scalar_t__ FUNC0 (TYPE_1__ const*) ; 
 scalar_t__ FUNC1 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 TYPE_2__* cms_attribute_properties ; 
 int /*<<< orphan*/  FUNC4 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC5(const CMS_SignerInfo *si)
{
    int i;
    int have_signed_attrs = (FUNC0(si) > 0);
    int have_unsigned_attrs = (FUNC1(si) > 0);

    for (i = 0; i < (int)FUNC3(cms_attribute_properties); ++i) {
        int nid = cms_attribute_properties[i].nid;
        int flags = cms_attribute_properties[i].flags;

        if (!FUNC4(nid, flags, CMS_ATTR_F_SIGNED,
                                 si->signedAttrs, have_signed_attrs)
            || !FUNC4(nid, flags, CMS_ATTR_F_UNSIGNED,
                                    si->unsignedAttrs, have_unsigned_attrs)) {
            FUNC2(CMS_F_CMS_SI_CHECK_ATTRIBUTES, CMS_R_ATTRIBUTE_ERROR);
            return 0;
        }
    }
    return 1;
}