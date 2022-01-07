
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int dmu_tx_t ;
typedef int dmu_buf_t ;
struct TYPE_2__ {int db_state; } ;
typedef TYPE_1__ dmu_buf_impl_t ;


 int DB_NOFILL ;
 int dmu_buf_will_fill (int *,int *) ;

void
dmu_buf_will_not_fill(dmu_buf_t *db_fake, dmu_tx_t *tx)
{
 dmu_buf_impl_t *db = (dmu_buf_impl_t *)db_fake;

 db->db_state = DB_NOFILL;

 dmu_buf_will_fill(db_fake, tx);
}
