
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int objset_t ;
typedef int name ;
typedef int longlong_t ;
typedef int int64_t ;
typedef int dmu_tx_t ;


 int snprintf (char*,int,char*,int ) ;
 int zap_increment (int *,scalar_t__,char*,int ,int *) ;

int
zap_increment_int(objset_t *os, uint64_t obj, uint64_t key, int64_t delta,
    dmu_tx_t *tx)
{
 char name[20];

 (void) snprintf(name, sizeof (name), "%llx", (longlong_t)key);
 return (zap_increment(os, obj, name, delta, tx));
}
