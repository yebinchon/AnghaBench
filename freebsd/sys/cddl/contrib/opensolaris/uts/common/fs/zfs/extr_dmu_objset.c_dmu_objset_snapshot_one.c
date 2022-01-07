
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int dsl_dataset_snapshot (int *,int *,int *) ;
 int fnvlist_add_boolean (int *,char*) ;
 int * fnvlist_alloc () ;
 int fnvlist_free (int *) ;
 char* kmem_asprintf (char*,char const*,char const*) ;
 int strfree (char*) ;

int
dmu_objset_snapshot_one(const char *fsname, const char *snapname)
{
 int err;
 char *longsnap = kmem_asprintf("%s@%s", fsname, snapname);
 nvlist_t *snaps = fnvlist_alloc();

 fnvlist_add_boolean(snaps, longsnap);
 strfree(longsnap);
 err = dsl_dataset_snapshot(snaps, ((void*)0), ((void*)0));
 fnvlist_free(snaps);
 return (err);
}
