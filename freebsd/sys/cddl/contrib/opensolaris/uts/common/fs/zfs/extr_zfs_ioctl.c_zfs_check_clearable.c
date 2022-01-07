
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int zc_value; int zc_name; } ;
typedef TYPE_1__ zfs_cmd_t ;
typedef int nvpair_t ;
typedef int nvlist_t ;


 int CRED () ;
 int KM_SLEEP ;
 int NV_UNIQUE_NAME ;
 int VERIFY (int) ;
 TYPE_1__* kmem_alloc (int,int ) ;
 int kmem_free (TYPE_1__*,int) ;
 scalar_t__ nvlist_add_int32 (int *,int ,int) ;
 scalar_t__ nvlist_alloc (int **,int ,int ) ;
 int nvlist_free (int *) ;
 int * nvlist_next_nvpair (int *,int *) ;
 scalar_t__ nvlist_remove_nvpair (int *,int *) ;
 char* nvpair_name (int *) ;
 scalar_t__ nvpair_value_int32 (int *,int*) ;
 int strcpy (int ,char*) ;
 int zfs_check_settable (char*,int *,int ) ;
 int zfs_secpolicy_inherit_prop (TYPE_1__*,int *,int ) ;

__attribute__((used)) static int
zfs_check_clearable(char *dataset, nvlist_t *props, nvlist_t **errlist)
{
 zfs_cmd_t *zc;
 nvpair_t *pair, *next_pair;
 nvlist_t *errors;
 int err, rv = 0;

 if (props == ((void*)0))
  return (0);

 VERIFY(nvlist_alloc(&errors, NV_UNIQUE_NAME, KM_SLEEP) == 0);

 zc = kmem_alloc(sizeof (zfs_cmd_t), KM_SLEEP);
 (void) strcpy(zc->zc_name, dataset);
 pair = nvlist_next_nvpair(props, ((void*)0));
 while (pair != ((void*)0)) {
  next_pair = nvlist_next_nvpair(props, pair);

  (void) strcpy(zc->zc_value, nvpair_name(pair));
  if ((err = zfs_check_settable(dataset, pair, CRED())) != 0 ||
      (err = zfs_secpolicy_inherit_prop(zc, ((void*)0), CRED())) != 0) {
   VERIFY(nvlist_remove_nvpair(props, pair) == 0);
   VERIFY(nvlist_add_int32(errors,
       zc->zc_value, err) == 0);
  }
  pair = next_pair;
 }
 kmem_free(zc, sizeof (zfs_cmd_t));

 if ((pair = nvlist_next_nvpair(errors, ((void*)0))) == ((void*)0)) {
  nvlist_free(errors);
  errors = ((void*)0);
 } else {
  VERIFY(nvpair_value_int32(pair, &rv) == 0);
 }

 if (errlist == ((void*)0))
  nvlist_free(errors);
 else
  *errlist = errors;

 return (rv);
}
