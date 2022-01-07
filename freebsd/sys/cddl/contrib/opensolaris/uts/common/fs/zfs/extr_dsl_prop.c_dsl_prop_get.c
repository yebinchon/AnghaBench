
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int objset_t ;


 int FTAG ;
 int dmu_objset_ds (int *) ;
 int dmu_objset_hold (char const*,int ,int **) ;
 int dmu_objset_rele (int *,int ) ;
 int dsl_prop_get_ds (int ,char const*,int,int,void*,char*) ;

int
dsl_prop_get(const char *dsname, const char *propname,
    int intsz, int numints, void *buf, char *setpoint)
{
 objset_t *os;
 int error;

 error = dmu_objset_hold(dsname, FTAG, &os);
 if (error != 0)
  return (error);

 error = dsl_prop_get_ds(dmu_objset_ds(os), propname,
     intsz, numints, buf, setpoint);

 dmu_objset_rele(os, FTAG);
 return (error);
}
