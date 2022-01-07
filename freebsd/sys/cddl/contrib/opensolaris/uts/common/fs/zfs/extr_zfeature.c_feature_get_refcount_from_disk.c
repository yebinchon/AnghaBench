
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int fi_flags; int fi_guid; } ;
typedef TYPE_1__ zfeature_info_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_6__ {scalar_t__ spa_feat_for_write_obj; scalar_t__ spa_feat_for_read_obj; int spa_meta_objset; } ;
typedef TYPE_2__ spa_t ;


 int ENOENT ;
 int ENOTSUP ;
 int SET_ERROR (int ) ;
 int ZFEATURE_FLAG_READONLY_COMPAT ;
 int zap_lookup (int ,scalar_t__,int ,int,int,scalar_t__*) ;

int
feature_get_refcount_from_disk(spa_t *spa, zfeature_info_t *feature,
    uint64_t *res)
{
 int err;
 uint64_t refcount;
 uint64_t zapobj = (feature->fi_flags & ZFEATURE_FLAG_READONLY_COMPAT) ?
     spa->spa_feat_for_write_obj : spa->spa_feat_for_read_obj;





 if (zapobj == 0)
  return (SET_ERROR(ENOTSUP));

 err = zap_lookup(spa->spa_meta_objset, zapobj,
     feature->fi_guid, sizeof (uint64_t), 1, &refcount);
 if (err != 0) {
  if (err == ENOENT)
   return (SET_ERROR(ENOTSUP));
  else
   return (err);
 }
 *res = refcount;
 return (0);
}
