
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {char* sname; } ;
struct TYPE_8__ {int flags; } ;
typedef int BIO ;
typedef int ASN1_VALUE ;
typedef TYPE_1__ ASN1_PCTX ;
typedef TYPE_2__ ASN1_ITEM ;


 int ASN1_PCTX_FLAGS_NO_STRUCT_NAME ;
 int asn1_item_print_ctx (int *,int **,int,TYPE_2__ const*,int *,char const*,int ,TYPE_1__ const*) ;
 TYPE_1__ default_pctx ;

int ASN1_item_print(BIO *out, ASN1_VALUE *ifld, int indent,
                    const ASN1_ITEM *it, const ASN1_PCTX *pctx)
{
    const char *sname;
    if (pctx == ((void*)0))
        pctx = &default_pctx;
    if (pctx->flags & ASN1_PCTX_FLAGS_NO_STRUCT_NAME)
        sname = ((void*)0);
    else
        sname = it->sname;
    return asn1_item_print_ctx(out, &ifld, indent, it, ((void*)0), sname, 0, pctx);
}
