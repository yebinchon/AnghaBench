
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int attrib; } ;
typedef TYPE_1__ PKCS12_SAFEBAG ;


 int MBSTRING_ASC ;
 int NID_friendlyName ;
 scalar_t__ X509at_add1_attr_by_NID (int *,int ,int ,unsigned char*,int) ;

int PKCS12_add_friendlyname_asc(PKCS12_SAFEBAG *bag, const char *name,
                                int namelen)
{
    if (X509at_add1_attr_by_NID(&bag->attrib, NID_friendlyName,
                                MBSTRING_ASC, (unsigned char *)name, namelen))
        return 1;
    else
        return 0;
}
