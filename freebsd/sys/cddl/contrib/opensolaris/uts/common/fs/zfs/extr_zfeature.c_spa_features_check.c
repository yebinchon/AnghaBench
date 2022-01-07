
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zap_cursor_t ;
struct TYPE_5__ {int za_integer_length; int za_num_integers; scalar_t__ za_first_integer; int za_name; } ;
typedef TYPE_1__ zap_attribute_t ;
typedef int uint64_t ;
struct TYPE_6__ {int spa_feat_desc_obj; int spa_feat_for_read_obj; int spa_feat_for_write_obj; int * spa_meta_objset; } ;
typedef TYPE_2__ spa_t ;
typedef int objset_t ;
typedef int nvlist_t ;
typedef int buf ;
typedef scalar_t__ boolean_t ;


 int ASSERT (int) ;
 scalar_t__ B_FALSE ;
 scalar_t__ B_TRUE ;
 int MAXPATHLEN ;
 int VERIFY (int) ;
 int fnvlist_add_uint64 (int *,int ,scalar_t__) ;
 scalar_t__ nvlist_add_string (int *,int ,char*) ;
 int zap_cursor_advance (int *) ;
 int zap_cursor_fini (int *) ;
 int zap_cursor_init (int *,int *,int ) ;
 scalar_t__ zap_cursor_retrieve (int *,TYPE_1__*) ;
 scalar_t__ zap_lookup (int *,int ,int ,int,int,char*) ;
 int zfeature_is_supported (int ) ;

boolean_t
spa_features_check(spa_t *spa, boolean_t for_write,
    nvlist_t *unsup_feat, nvlist_t *enabled_feat)
{
 objset_t *os = spa->spa_meta_objset;
 boolean_t supported;
 zap_cursor_t zc;
 zap_attribute_t za;
 uint64_t obj = for_write ?
     spa->spa_feat_for_write_obj : spa->spa_feat_for_read_obj;

 supported = B_TRUE;
 for (zap_cursor_init(&zc, os, obj);
     zap_cursor_retrieve(&zc, &za) == 0;
     zap_cursor_advance(&zc)) {
  ASSERT(za.za_integer_length == sizeof (uint64_t) &&
      za.za_num_integers == 1);

  if (((void*)0) != enabled_feat) {
   fnvlist_add_uint64(enabled_feat, za.za_name,
       za.za_first_integer);
  }

  if (za.za_first_integer != 0 &&
      !zfeature_is_supported(za.za_name)) {
   supported = B_FALSE;

   if (((void*)0) != unsup_feat) {
    char *desc = "";
    char buf[MAXPATHLEN];

    if (zap_lookup(os, spa->spa_feat_desc_obj,
        za.za_name, 1, sizeof (buf), buf) == 0)
     desc = buf;

    VERIFY(nvlist_add_string(unsup_feat, za.za_name,
        desc) == 0);
   }
  }
 }
 zap_cursor_fini(&zc);

 return (supported);
}
