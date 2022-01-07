
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* ext_nids ;

void X509_REQ_set_extension_nids(int *nids)
{
    ext_nids = nids;
}
