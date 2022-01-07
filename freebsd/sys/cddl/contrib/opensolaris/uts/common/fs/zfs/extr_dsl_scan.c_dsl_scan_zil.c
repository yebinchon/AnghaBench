
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int zilog_t ;
struct TYPE_8__ {TYPE_2__* member_1; TYPE_3__* member_0; } ;
typedef TYPE_1__ zil_scan_arg_t ;
struct TYPE_9__ {scalar_t__ zh_claim_txg; } ;
typedef TYPE_2__ zil_header_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_10__ {int dp_meta_objset; int dp_spa; } ;
typedef TYPE_3__ dsl_pool_t ;


 int ASSERT (int ) ;
 int dsl_scan_zil_block ;
 int dsl_scan_zil_record ;
 int spa_writeable (int ) ;
 int * zil_alloc (int ,TYPE_2__*) ;
 int zil_free (int *) ;
 int zil_parse (int *,int ,int ,TYPE_1__*,scalar_t__) ;

__attribute__((used)) static void
dsl_scan_zil(dsl_pool_t *dp, zil_header_t *zh)
{
 uint64_t claim_txg = zh->zh_claim_txg;
 zil_scan_arg_t zsa = { dp, zh };
 zilog_t *zilog;

 ASSERT(spa_writeable(dp->dp_spa));





 if (claim_txg == 0)
  return;

 zilog = zil_alloc(dp->dp_meta_objset, zh);

 (void) zil_parse(zilog, dsl_scan_zil_block, dsl_scan_zil_record, &zsa,
     claim_txg);

 zil_free(zilog);
}
