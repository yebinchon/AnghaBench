
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef void* svn_revnum_t ;
struct TYPE_9__ {int auth_baton; void* open_tmp_file; } ;
struct TYPE_8__ {int auth_baton; void* open_tmp_file; } ;
struct TYPE_10__ {char const* to_url; char const* from_url; void* end_rev; void* start_rev; int source_prop_encoding; int allow_non_empty; int skip_unchanged; int quiet; TYPE_2__ sync_callbacks; TYPE_1__ source_callbacks; int config; } ;
typedef TYPE_3__ subcommand_baton_t ;
struct TYPE_11__ {int source_prop_encoding; int allow_non_empty; int skip_unchanged; int quiet; int sync_auth_baton; int source_auth_baton; int config; } ;
typedef TYPE_4__ opt_baton_t ;
typedef int apr_pool_t ;


 TYPE_3__* apr_pcalloc (int *,int) ;
 void* open_tmp_file ;

__attribute__((used)) static subcommand_baton_t *
make_subcommand_baton(opt_baton_t *opt_baton,
                      const char *to_url,
                      const char *from_url,
                      svn_revnum_t start_rev,
                      svn_revnum_t end_rev,
                      apr_pool_t *pool)
{
  subcommand_baton_t *b = apr_pcalloc(pool, sizeof(*b));
  b->config = opt_baton->config;
  b->source_callbacks.open_tmp_file = open_tmp_file;
  b->source_callbacks.auth_baton = opt_baton->source_auth_baton;
  b->sync_callbacks.open_tmp_file = open_tmp_file;
  b->sync_callbacks.auth_baton = opt_baton->sync_auth_baton;
  b->quiet = opt_baton->quiet;
  b->skip_unchanged = opt_baton->skip_unchanged;
  b->allow_non_empty = opt_baton->allow_non_empty;
  b->to_url = to_url;
  b->source_prop_encoding = opt_baton->source_prop_encoding;
  b->from_url = from_url;
  b->start_rev = start_rev;
  b->end_rev = end_rev;
  return b;
}
