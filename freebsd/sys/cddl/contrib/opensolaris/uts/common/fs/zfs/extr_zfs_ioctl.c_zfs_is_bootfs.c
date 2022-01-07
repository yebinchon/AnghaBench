
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int objset_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int FTAG ;
 scalar_t__ dmu_objset_hold (char const*,int ,int **) ;
 scalar_t__ dmu_objset_id (int *) ;
 int dmu_objset_rele (int *,int ) ;
 int dmu_objset_spa (int *) ;
 scalar_t__ spa_bootfs (int ) ;

__attribute__((used)) static boolean_t
zfs_is_bootfs(const char *name)
{
 objset_t *os;

 if (dmu_objset_hold(name, FTAG, &os) == 0) {
  boolean_t ret;
  ret = (dmu_objset_id(os) == spa_bootfs(dmu_objset_spa(os)));
  dmu_objset_rele(os, FTAG);
  return (ret);
 }
 return (B_FALSE);
}
