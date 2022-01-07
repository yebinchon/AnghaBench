
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;
typedef int boolean_t ;


 int dsl_destroy_snapshots_nvl (int *,int ,int *) ;
 int fnvlist_add_boolean (int *,char const*) ;
 int * fnvlist_alloc () ;
 int fnvlist_free (int *) ;

int
dsl_destroy_snapshot(const char *name, boolean_t defer)
{
 int error;
 nvlist_t *nvl = fnvlist_alloc();
 nvlist_t *errlist = fnvlist_alloc();

 fnvlist_add_boolean(nvl, name);
 error = dsl_destroy_snapshots_nvl(nvl, defer, errlist);
 fnvlist_free(errlist);
 fnvlist_free(nvl);
 return (error);
}
