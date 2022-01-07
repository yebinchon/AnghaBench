
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pool; } ;
typedef TYPE_1__ trail_t ;
typedef int svn_error_t ;
struct txn_proplist_args {char const* id; int ** table_p; } ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int * apr_hash_make (int ) ;
 int txn_body_txn_proplist (struct txn_proplist_args*,TYPE_1__*) ;

svn_error_t *
svn_fs_base__txn_proplist_in_trail(apr_hash_t **table_p,
                                   const char *txn_id,
                                   trail_t *trail)
{
  struct txn_proplist_args args;
  apr_hash_t *table;

  args.table_p = &table;
  args.id = txn_id;
  SVN_ERR(txn_body_txn_proplist(&args, trail));

  *table_p = table ? table : apr_hash_make(trail->pool);
  return SVN_NO_ERROR;
}
