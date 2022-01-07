
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dmu_tx_t ;



__attribute__((used)) static int
dsl_null_checkfunc(void *arg, dmu_tx_t *tx)
{
 return (0);
}
