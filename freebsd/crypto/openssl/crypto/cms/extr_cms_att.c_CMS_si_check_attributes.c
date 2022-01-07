
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int nid; int flags; } ;
struct TYPE_7__ {int unsignedAttrs; int signedAttrs; } ;
typedef TYPE_1__ CMS_SignerInfo ;


 int CMS_ATTR_F_SIGNED ;
 int CMS_ATTR_F_UNSIGNED ;
 int CMS_F_CMS_SI_CHECK_ATTRIBUTES ;
 int CMS_R_ATTRIBUTE_ERROR ;
 scalar_t__ CMS_signed_get_attr_count (TYPE_1__ const*) ;
 scalar_t__ CMS_unsigned_get_attr_count (TYPE_1__ const*) ;
 int CMSerr (int ,int ) ;
 scalar_t__ OSSL_NELEM (TYPE_2__*) ;
 TYPE_2__* cms_attribute_properties ;
 int cms_check_attribute (int,int,int ,int ,int) ;

int CMS_si_check_attributes(const CMS_SignerInfo *si)
{
    int i;
    int have_signed_attrs = (CMS_signed_get_attr_count(si) > 0);
    int have_unsigned_attrs = (CMS_unsigned_get_attr_count(si) > 0);

    for (i = 0; i < (int)OSSL_NELEM(cms_attribute_properties); ++i) {
        int nid = cms_attribute_properties[i].nid;
        int flags = cms_attribute_properties[i].flags;

        if (!cms_check_attribute(nid, flags, CMS_ATTR_F_SIGNED,
                                 si->signedAttrs, have_signed_attrs)
            || !cms_check_attribute(nid, flags, CMS_ATTR_F_UNSIGNED,
                                    si->unsignedAttrs, have_unsigned_attrs)) {
            CMSerr(CMS_F_CMS_SI_CHECK_ATTRIBUTES, CMS_R_ATTRIBUTE_ERROR);
            return 0;
        }
    }
    return 1;
}
