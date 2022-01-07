
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num_hash_comps; int num_retrieve_miss; int num_retrieve; int num_no_delete; int num_delete; int num_replace; int num_insert; int num_comp_calls; int num_hash_calls; int num_contract_reallocs; int num_contracts; int num_expand_reallocs; int num_expands; int num_alloc_nodes; int num_nodes; int num_items; } ;
typedef TYPE_1__ OPENSSL_LHASH ;
typedef int BIO ;


 int BIO_printf (int *,char*,int ) ;

void OPENSSL_LH_stats_bio(const OPENSSL_LHASH *lh, BIO *out)
{
    BIO_printf(out, "num_items             = %lu\n", lh->num_items);
    BIO_printf(out, "num_nodes             = %u\n", lh->num_nodes);
    BIO_printf(out, "num_alloc_nodes       = %u\n", lh->num_alloc_nodes);
    BIO_printf(out, "num_expands           = %lu\n", lh->num_expands);
    BIO_printf(out, "num_expand_reallocs   = %lu\n", lh->num_expand_reallocs);
    BIO_printf(out, "num_contracts         = %lu\n", lh->num_contracts);
    BIO_printf(out, "num_contract_reallocs = %lu\n", lh->num_contract_reallocs);
    BIO_printf(out, "num_hash_calls        = %lu\n", lh->num_hash_calls);
    BIO_printf(out, "num_comp_calls        = %lu\n", lh->num_comp_calls);
    BIO_printf(out, "num_insert            = %lu\n", lh->num_insert);
    BIO_printf(out, "num_replace           = %lu\n", lh->num_replace);
    BIO_printf(out, "num_delete            = %lu\n", lh->num_delete);
    BIO_printf(out, "num_no_delete         = %lu\n", lh->num_no_delete);
    BIO_printf(out, "num_retrieve          = %lu\n", lh->num_retrieve);
    BIO_printf(out, "num_retrieve_miss     = %lu\n", lh->num_retrieve_miss);
    BIO_printf(out, "num_hash_comps        = %lu\n", lh->num_hash_comps);
}
