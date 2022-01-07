
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int nvpair_t ;
typedef int nvlist_t ;
struct TYPE_3__ {int dbda_success; int * dbda_errors; int * dbda_bmarks; } ;
typedef TYPE_1__ dsl_bookmark_destroy_arg_t ;


 int ZFS_SPACE_CHECK_RESERVED ;
 int dsl_bookmark_destroy_check ;
 int dsl_bookmark_destroy_sync ;
 int dsl_sync_task (int ,int ,int ,TYPE_1__*,int ,int ) ;
 int fnvlist_alloc () ;
 int fnvlist_free (int ) ;
 int fnvlist_num_pairs (int *) ;
 int * nvlist_next_nvpair (int *,int *) ;
 int nvpair_name (int *) ;

int
dsl_bookmark_destroy(nvlist_t *bmarks, nvlist_t *errors)
{
 int rv;
 dsl_bookmark_destroy_arg_t dbda;
 nvpair_t *pair = nvlist_next_nvpair(bmarks, ((void*)0));
 if (pair == ((void*)0))
  return (0);

 dbda.dbda_bmarks = bmarks;
 dbda.dbda_errors = errors;
 dbda.dbda_success = fnvlist_alloc();

 rv = dsl_sync_task(nvpair_name(pair), dsl_bookmark_destroy_check,
     dsl_bookmark_destroy_sync, &dbda, fnvlist_num_pairs(bmarks),
     ZFS_SPACE_CHECK_RESERVED);
 fnvlist_free(dbda.dbda_success);
 return (rv);
}
