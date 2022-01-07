
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
typedef int objset_t ;
struct TYPE_6__ {int dd_object; TYPE_1__* dd_pool; } ;
typedef TYPE_2__ dsl_dir_t ;
struct TYPE_5__ {int * dp_meta_objset; } ;


 int DD_FIELD_LAST_REMAP_TXG ;
 int ENOENT ;
 scalar_t__ dsl_dir_is_zapified (TYPE_2__*) ;
 int zap_lookup (int *,int ,int ,int,int,int *) ;

int
dsl_dir_get_remaptxg(dsl_dir_t *dd, uint64_t *count)
{
 if (dsl_dir_is_zapified(dd)) {
  objset_t *os = dd->dd_pool->dp_meta_objset;
  return (zap_lookup(os, dd->dd_object, DD_FIELD_LAST_REMAP_TXG,
      sizeof (*count), 1, count));
 } else {
  return (ENOENT);
 }
}
