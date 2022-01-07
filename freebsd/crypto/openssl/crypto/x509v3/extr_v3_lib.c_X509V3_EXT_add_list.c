
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ext_nid; } ;
typedef TYPE_1__ X509V3_EXT_METHOD ;


 int X509V3_EXT_add (TYPE_1__*) ;

int X509V3_EXT_add_list(X509V3_EXT_METHOD *extlist)
{
    for (; extlist->ext_nid != -1; extlist++)
        if (!X509V3_EXT_add(extlist))
            return 0;
    return 1;
}
