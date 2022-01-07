
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int X509_ATTRIBUTE ;
struct TYPE_3__ {int attrib; } ;
typedef TYPE_1__ PKCS12_SAFEBAG ;
typedef int EVP_PKEY ;


 int * EVP_PKEY_get_attr (int *,int) ;
 int EVP_PKEY_get_attr_by_NID (int *,int,int) ;
 int X509at_add1_attr (int *,int *) ;

__attribute__((used)) static int copy_bag_attr(PKCS12_SAFEBAG *bag, EVP_PKEY *pkey, int nid)
{
    int idx;
    X509_ATTRIBUTE *attr;
    idx = EVP_PKEY_get_attr_by_NID(pkey, nid, -1);
    if (idx < 0)
        return 1;
    attr = EVP_PKEY_get_attr(pkey, idx);
    if (!X509at_add1_attr(&bag->attrib, attr))
        return 0;
    return 1;
}
