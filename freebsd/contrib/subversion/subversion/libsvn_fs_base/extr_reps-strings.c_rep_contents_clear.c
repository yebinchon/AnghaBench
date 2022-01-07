
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
struct TYPE_7__ {char* string_key; } ;
struct TYPE_8__ {TYPE_1__ fulltext; } ;
struct TYPE_9__ {scalar_t__ kind; int * sha1_checksum; int * md5_checksum; TYPE_2__ contents; } ;
typedef TYPE_3__ representation_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int SVN_ERR_FS_REP_NOT_MUTABLE ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int rep_is_mutable (TYPE_3__*,char const*) ;
 scalar_t__ rep_kind_fulltext ;
 int * svn_error_createf (int ,int *,int ,char const*) ;
 int svn_fs_bdb__read_rep (TYPE_3__**,int *,char const*,int *,int *) ;
 int svn_fs_bdb__string_clear (int *,char const*,int *,int *) ;
 int svn_fs_bdb__write_rep (int *,char const*,TYPE_3__*,int *,int *) ;

__attribute__((used)) static svn_error_t *
rep_contents_clear(svn_fs_t *fs,
                   const char *rep_key,
                   const char *txn_id,
                   trail_t *trail,
                   apr_pool_t *pool)
{
  representation_t *rep;
  const char *str_key;

  SVN_ERR(svn_fs_bdb__read_rep(&rep, fs, rep_key, trail, pool));


  if (! rep_is_mutable(rep, txn_id))
    return svn_error_createf
      (SVN_ERR_FS_REP_NOT_MUTABLE, ((void*)0),
       _("Rep '%s' is not mutable"), rep_key);

  SVN_ERR_ASSERT(rep->kind == rep_kind_fulltext);



  str_key = rep->contents.fulltext.string_key;
  if (str_key && *str_key)
    {
      SVN_ERR(svn_fs_bdb__string_clear(fs, str_key, trail, pool));
      rep->md5_checksum = ((void*)0);
      rep->sha1_checksum = ((void*)0);
      SVN_ERR(svn_fs_bdb__write_rep(fs, rep_key, rep, trail, pool));
    }
  return SVN_NO_ERROR;
}
