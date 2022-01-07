
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int dsl_prop_get (char const*,char const*,int,int,int *,char*) ;

int
dsl_prop_get_integer(const char *ddname, const char *propname,
    uint64_t *valuep, char *setpoint)
{
 return (dsl_prop_get(ddname, propname, 8, 1, valuep, setpoint));
}
