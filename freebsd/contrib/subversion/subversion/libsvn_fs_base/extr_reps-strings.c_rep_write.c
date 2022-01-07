
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int trail_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
struct TYPE_6__ {int string_key; } ;
struct TYPE_7__ {TYPE_1__ fulltext; } ;
struct TYPE_8__ {scalar_t__ kind; TYPE_2__ contents; } ;
typedef TYPE_3__ representation_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_FS_CORRUPT ;
 int SVN_ERR_FS_REP_NOT_MUTABLE ;
 int * SVN_NO_ERROR ;
 int * UNKNOWN_NODE_KIND (char const*) ;
 int _ (char*) ;
 int rep_is_mutable (TYPE_3__*,char const*) ;
 scalar_t__ rep_kind_delta ;
 scalar_t__ rep_kind_fulltext ;
 int * svn_error_createf (int ,int *,int ,char const*) ;
 int svn_fs_bdb__read_rep (TYPE_3__**,int *,char const*,int *,int *) ;
 int svn_fs_bdb__string_append (int *,int *,int ,char const*,int *,int *) ;

__attribute__((used)) static svn_error_t *
rep_write(svn_fs_t *fs,
          const char *rep_key,
          const char *buf,
          apr_size_t len,
          const char *txn_id,
          trail_t *trail,
          apr_pool_t *pool)
{
  representation_t *rep;

  SVN_ERR(svn_fs_bdb__read_rep(&rep, fs, rep_key, trail, pool));

  if (! rep_is_mutable(rep, txn_id))
    return svn_error_createf
      (SVN_ERR_FS_REP_NOT_MUTABLE, ((void*)0),
       _("Rep '%s' is not mutable"), rep_key);

  if (rep->kind == rep_kind_fulltext)
    {
      SVN_ERR(svn_fs_bdb__string_append
              (fs, &(rep->contents.fulltext.string_key), len, buf,
               trail, pool));
    }
  else if (rep->kind == rep_kind_delta)
    {



      return svn_error_createf
        (SVN_ERR_FS_CORRUPT, ((void*)0),
         _("Rep '%s' both mutable and non-fulltext"), rep_key);
    }
  else
    return UNKNOWN_NODE_KIND(rep_key);

  return SVN_NO_ERROR;
}
