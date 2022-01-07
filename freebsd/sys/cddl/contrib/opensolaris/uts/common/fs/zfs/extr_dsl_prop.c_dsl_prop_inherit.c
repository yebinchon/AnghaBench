
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zprop_source_t ;
typedef int nvlist_t ;


 int dsl_props_set (char const*,int ,int *) ;
 int fnvlist_add_boolean (int *,char const*) ;
 int * fnvlist_alloc () ;
 int fnvlist_free (int *) ;

int
dsl_prop_inherit(const char *dsname, const char *propname,
    zprop_source_t source)
{
 nvlist_t *nvl = fnvlist_alloc();
 int error;

 fnvlist_add_boolean(nvl, propname);
 error = dsl_props_set(dsname, source, nvl);
 fnvlist_free(nvl);
 return (error);
}
