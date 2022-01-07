
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int svn_string_t ;
typedef int svn_boolean_t ;
struct TYPE_8__ {TYPE_3__* token; int * pool; int * dstream; int is_file; void* baton; } ;
typedef TYPE_1__ ra_svn_token_entry_t ;
struct TYPE_9__ {TYPE_1__* last_token; int tokens; } ;
typedef TYPE_2__ ra_svn_driver_state_t ;
typedef int apr_pool_t ;
struct TYPE_10__ {int len; int data; } ;


 int apr_hash_set (int ,int ,int ,TYPE_1__*) ;
 TYPE_1__* apr_palloc (int *,int) ;
 TYPE_3__* svn_string_dup (int *,int *) ;

__attribute__((used)) static ra_svn_token_entry_t *store_token(ra_svn_driver_state_t *ds,
                                         void *baton,
                                         svn_string_t *token,
                                         svn_boolean_t is_file,
                                         apr_pool_t *pool)
{
  ra_svn_token_entry_t *entry;

  entry = apr_palloc(pool, sizeof(*entry));
  entry->token = svn_string_dup(token, pool);
  entry->baton = baton;
  entry->is_file = is_file;
  entry->dstream = ((void*)0);
  entry->pool = pool;

  apr_hash_set(ds->tokens, entry->token->data, entry->token->len, entry);
  ds->last_token = entry;

  return entry;
}
