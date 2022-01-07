
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int zgd_lr; scalar_t__ zgd_db; } ;
typedef TYPE_1__ zgd_t ;


 int dmu_buf_rele (scalar_t__,TYPE_1__*) ;
 int kmem_free (TYPE_1__*,int) ;
 int rangelock_exit (int ) ;

__attribute__((used)) static void
zvol_get_done(zgd_t *zgd, int error)
{
 if (zgd->zgd_db)
  dmu_buf_rele(zgd->zgd_db, zgd);

 rangelock_exit(zgd->zgd_lr);

 kmem_free(zgd, sizeof (zgd_t));
}
