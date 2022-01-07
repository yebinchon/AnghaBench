
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int objset_t ;
typedef int dmu_tx_t ;


 int dmu_object_free (int *,int ,int *) ;

int
zap_destroy(objset_t *os, uint64_t zapobj, dmu_tx_t *tx)
{






 return (dmu_object_free(os, zapobj, tx));
}
