
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int trail_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
struct TYPE_8__ {int string_key; } ;
struct TYPE_7__ {TYPE_2__ fulltext; } ;
struct TYPE_9__ {scalar_t__ kind; TYPE_1__ contents; } ;
typedef TYPE_3__ representation_t ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int * UNKNOWN_NODE_KIND (char const*) ;
 int delete_strings (int *,int *,int *,int *) ;
 int delta_string_keys (int **,TYPE_3__*,int *) ;
 int rep_is_mutable (TYPE_3__*,char const*) ;
 scalar_t__ rep_kind_delta ;
 scalar_t__ rep_kind_fulltext ;
 int * svn_fs_bdb__delete_rep (int *,char const*,int *,int *) ;
 int svn_fs_bdb__read_rep (TYPE_3__**,int *,char const*,int *,int *) ;
 int svn_fs_bdb__string_delete (int *,int ,int *,int *) ;

svn_error_t *
svn_fs_base__delete_rep_if_mutable(svn_fs_t *fs,
                                   const char *rep_key,
                                   const char *txn_id,
                                   trail_t *trail,
                                   apr_pool_t *pool)
{
  representation_t *rep;

  SVN_ERR(svn_fs_bdb__read_rep(&rep, fs, rep_key, trail, pool));
  if (! rep_is_mutable(rep, txn_id))
    return SVN_NO_ERROR;

  if (rep->kind == rep_kind_fulltext)
    {
      SVN_ERR(svn_fs_bdb__string_delete(fs,
                                        rep->contents.fulltext.string_key,
                                        trail, pool));
    }
  else if (rep->kind == rep_kind_delta)
    {
      apr_array_header_t *keys;
      SVN_ERR(delta_string_keys(&keys, rep, pool));
      SVN_ERR(delete_strings(keys, fs, trail, pool));
    }
  else
    return UNKNOWN_NODE_KIND(rep_key);

  return svn_fs_bdb__delete_rep(fs, rep_key, trail, pool);
}
