
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int zap_cursor_t ;
struct TYPE_12__ {int za_first_integer; int za_name; } ;
typedef TYPE_3__ zap_attribute_t ;
typedef int uint64_t ;
struct TYPE_13__ {TYPE_1__* os_dsl_dataset; } ;
typedef TYPE_4__ objset_t ;
struct TYPE_14__ {TYPE_2__* dd_pool; } ;
typedef TYPE_5__ dsl_dir_t ;
struct TYPE_15__ {scalar_t__ dd_head_dataset_obj; int dd_child_dir_zapobj; } ;
struct TYPE_11__ {int dp_meta_objset; } ;
struct TYPE_10__ {scalar_t__ ds_object; TYPE_5__* ds_dir; } ;


 int ENAMETOOLONG ;
 int ENOENT ;
 int SET_ERROR (int ) ;
 TYPE_7__* dsl_dir_phys (TYPE_5__*) ;
 int strcpy (char*,int ) ;
 int strlen (int ) ;
 int zap_cursor_advance (int *) ;
 int zap_cursor_fini (int *) ;
 int zap_cursor_init_serialized (int *,int ,int ,int ) ;
 scalar_t__ zap_cursor_retrieve (int *,TYPE_3__*) ;
 int zap_cursor_serialize (int *) ;

int
dmu_dir_list_next(objset_t *os, int namelen, char *name,
    uint64_t *idp, uint64_t *offp)
{
 dsl_dir_t *dd = os->os_dsl_dataset->ds_dir;
 zap_cursor_t cursor;
 zap_attribute_t attr;


 if (os->os_dsl_dataset->ds_object !=
     dsl_dir_phys(dd)->dd_head_dataset_obj)
  return (SET_ERROR(ENOENT));

 zap_cursor_init_serialized(&cursor,
     dd->dd_pool->dp_meta_objset,
     dsl_dir_phys(dd)->dd_child_dir_zapobj, *offp);

 if (zap_cursor_retrieve(&cursor, &attr) != 0) {
  zap_cursor_fini(&cursor);
  return (SET_ERROR(ENOENT));
 }

 if (strlen(attr.za_name) + 1 > namelen) {
  zap_cursor_fini(&cursor);
  return (SET_ERROR(ENAMETOOLONG));
 }

 (void) strcpy(name, attr.za_name);
 if (idp)
  *idp = attr.za_first_integer;
 zap_cursor_advance(&cursor);
 *offp = zap_cursor_serialize(&cursor);
 zap_cursor_fini(&cursor);

 return (0);
}
