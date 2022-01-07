
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
typedef int obj ;
struct TYPE_6__ {int dp_root_dir; int dp_meta_objset; } ;
typedef TYPE_1__ dsl_pool_t ;
typedef int dsl_dir_t ;
struct TYPE_7__ {int dd_child_dir_zapobj; } ;


 int dsl_dir_hold_obj (TYPE_1__*,int ,char const*,TYPE_1__*,int **) ;
 TYPE_3__* dsl_dir_phys (int ) ;
 int zap_lookup (int ,int ,char const*,int,int,int *) ;

int
dsl_pool_open_special_dir(dsl_pool_t *dp, const char *name, dsl_dir_t **ddp)
{
 uint64_t obj;
 int err;

 err = zap_lookup(dp->dp_meta_objset,
     dsl_dir_phys(dp->dp_root_dir)->dd_child_dir_zapobj,
     name, sizeof (obj), 1, &obj);
 if (err)
  return (err);

 return (dsl_dir_hold_obj(dp, obj, name, dp, ddp));
}
