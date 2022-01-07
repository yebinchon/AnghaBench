
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_diff_fns_t ;
struct TYPE_3__ {int token_discard_all; int token_discard; int token_compare; int datasource_get_next_token; int datasource_close; int datasources_open; } ;
typedef TYPE_1__ svn_diff_fns2_t ;
struct fns_wrapper_baton {int const* vtable; void* old_baton; } ;
typedef int apr_pool_t ;


 void* apr_palloc (int *,int) ;
 int datasource_close ;
 int datasource_get_next_token ;
 int datasources_open ;
 int token_compare ;
 int token_discard ;
 int token_discard_all ;

__attribute__((used)) static void
wrap_diff_fns(svn_diff_fns2_t **diff_fns2,
              struct fns_wrapper_baton **baton2,
              const svn_diff_fns_t *diff_fns,
              void *baton,
              apr_pool_t *result_pool)
{

  *diff_fns2 = apr_palloc(result_pool, sizeof(**diff_fns2));

  (*diff_fns2)->datasources_open = datasources_open;
  (*diff_fns2)->datasource_close = datasource_close;
  (*diff_fns2)->datasource_get_next_token = datasource_get_next_token;
  (*diff_fns2)->token_compare = token_compare;
  (*diff_fns2)->token_discard = token_discard;
  (*diff_fns2)->token_discard_all = token_discard_all;


  *baton2 = apr_palloc(result_pool, sizeof (**baton2));
  (*baton2)->old_baton = baton;
  (*baton2)->vtable = diff_fns;
}
