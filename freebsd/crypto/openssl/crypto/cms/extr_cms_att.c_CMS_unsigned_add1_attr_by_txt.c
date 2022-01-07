
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int unsignedAttrs; } ;
typedef TYPE_1__ CMS_SignerInfo ;


 scalar_t__ X509at_add1_attr_by_txt (int *,char const*,int,void const*,int) ;

int CMS_unsigned_add1_attr_by_txt(CMS_SignerInfo *si,
                                  const char *attrname, int type,
                                  const void *bytes, int len)
{
    if (X509at_add1_attr_by_txt(&si->unsignedAttrs, attrname,
                                type, bytes, len))
        return 1;
    return 0;
}
