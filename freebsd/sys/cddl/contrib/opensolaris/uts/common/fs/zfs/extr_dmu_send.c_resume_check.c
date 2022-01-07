
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int val ;
typedef scalar_t__ uint64_t ;
struct receive_arg {int os; } ;
typedef int objset_t ;
typedef int nvlist_t ;
struct TYPE_2__ {int * dp_meta_objset; } ;


 int DS_FIELD_RESUME_OBJECT ;
 int DS_FIELD_RESUME_OFFSET ;
 int EINVAL ;
 int SET_ERROR (int ) ;
 int VERIFY0 (int ) ;
 scalar_t__ dmu_objset_id (int ) ;
 TYPE_1__* dmu_objset_pool (int ) ;
 scalar_t__ nvlist_lookup_uint64 (int *,char*,scalar_t__*) ;
 int zap_lookup (int *,scalar_t__,int ,int,int,scalar_t__*) ;

__attribute__((used)) static int
resume_check(struct receive_arg *ra, nvlist_t *begin_nvl)
{
 uint64_t val;
 objset_t *mos = dmu_objset_pool(ra->os)->dp_meta_objset;
 uint64_t dsobj = dmu_objset_id(ra->os);
 uint64_t resume_obj, resume_off;

 if (nvlist_lookup_uint64(begin_nvl,
     "resume_object", &resume_obj) != 0 ||
     nvlist_lookup_uint64(begin_nvl,
     "resume_offset", &resume_off) != 0) {
  return (SET_ERROR(EINVAL));
 }
 VERIFY0(zap_lookup(mos, dsobj,
     DS_FIELD_RESUME_OBJECT, sizeof (val), 1, &val));
 if (resume_obj != val)
  return (SET_ERROR(EINVAL));
 VERIFY0(zap_lookup(mos, dsobj,
     DS_FIELD_RESUME_OFFSET, sizeof (val), 1, &val));
 if (resume_off != val)
  return (SET_ERROR(EINVAL));

 return (0);
}
