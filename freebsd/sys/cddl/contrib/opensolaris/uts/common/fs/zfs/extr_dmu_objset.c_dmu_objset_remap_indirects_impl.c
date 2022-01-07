
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int objset_t ;


 int B_FALSE ;
 int EEXIST ;
 int ENOENT ;
 int ESRCH ;
 int dmu_object_next (int *,int *,int ,int ) ;
 int dmu_object_remap_indirects (int *,int ,int ) ;

__attribute__((used)) static int
dmu_objset_remap_indirects_impl(objset_t *os, uint64_t last_removed_txg)
{
 int error = 0;
 uint64_t object = 0;
 while ((error = dmu_object_next(os, &object, B_FALSE, 0)) == 0) {
  error = dmu_object_remap_indirects(os, object,
      last_removed_txg);
  if (error != 0 && error != ENOENT && error != EEXIST) {
   break;
  }
 }
 if (error == ESRCH) {
  error = 0;
 }
 return (error);
}
