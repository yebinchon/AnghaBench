
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int fs; } ;
typedef TYPE_1__ trail_t ;
typedef int svn_error_t ;
struct TYPE_8__ {char const* txn_id; } ;
typedef TYPE_2__ representation_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 scalar_t__ strcmp (char const*,char const*) ;
 int * svn_fs_base__rep_deltify (int ,char const*,char const*,TYPE_1__*,int *) ;
 int svn_fs_bdb__read_rep (TYPE_2__**,int ,char const*,TYPE_1__*,int *) ;

__attribute__((used)) static svn_error_t *
maybe_deltify_mutable_rep(const char *target_rep_key,
                          const char *source_rep_key,
                          const char *txn_id,
                          trail_t *trail,
                          apr_pool_t *pool)
{
  if (! (target_rep_key && source_rep_key
         && (strcmp(target_rep_key, source_rep_key) != 0)))
    return SVN_NO_ERROR;

  if (txn_id)
    {
      representation_t *target_rep;
      SVN_ERR(svn_fs_bdb__read_rep(&target_rep, trail->fs, target_rep_key,
                                   trail, pool));
      if (strcmp(target_rep->txn_id, txn_id) != 0)
        return SVN_NO_ERROR;
    }

  return svn_fs_base__rep_deltify(trail->fs, target_rep_key, source_rep_key,
                                  trail, pool);
}
