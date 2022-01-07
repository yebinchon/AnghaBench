
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * dpname; } ;
typedef TYPE_1__ DIST_POINT_NAME ;
typedef int ASN1_VALUE ;
typedef int ASN1_ITEM ;




 int X509_NAME_free (int *) ;

__attribute__((used)) static int dpn_cb(int operation, ASN1_VALUE **pval, const ASN1_ITEM *it,
                  void *exarg)
{
    DIST_POINT_NAME *dpn = (DIST_POINT_NAME *)*pval;

    switch (operation) {
    case 128:
        dpn->dpname = ((void*)0);
        break;

    case 129:
        X509_NAME_free(dpn->dpname);
        break;
    }
    return 1;
}
