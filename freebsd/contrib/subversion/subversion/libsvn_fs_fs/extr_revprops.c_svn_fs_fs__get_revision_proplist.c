
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


typedef int svn_revnum_t ;
struct TYPE_22__ {TYPE_5__* fsap_data; } ;
typedef TYPE_1__ svn_fs_t ;
struct TYPE_23__ {int apr_err; } ;
typedef TYPE_2__ svn_error_t ;
typedef int svn_boolean_t ;
struct TYPE_24__ {int second; int revision; } ;
typedef TYPE_3__ pair_cache_key_t ;
struct TYPE_25__ {int * properties; } ;
typedef TYPE_4__ packed_revprops_t ;
struct TYPE_26__ {scalar_t__ format; int revprop_cache; int revprop_prefix; } ;
typedef TYPE_5__ fs_fs_data_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int APR_STATUS_IS_ENOENT (int ) ;
 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_FS_NO_SUCH_REVISION ;
 int SVN_ERR_W (int ,int ) ;
 scalar_t__ SVN_FS_FS__MIN_PACKED_REVPROP_FORMAT ;
 TYPE_2__* SVN_NO_ERROR ;
 int _ (char*) ;
 int apr_psprintf (int *,char*,int ) ;
 int prepare_revprop_cache (TYPE_1__*,int *) ;
 TYPE_2__* read_non_packed_revprop (int **,TYPE_1__*,int ,int,int *) ;
 int read_pack_revprop (TYPE_4__**,TYPE_1__*,int ,int ,int,int *) ;
 int svn_cache__get (void**,int*,int ,TYPE_3__*,int *) ;
 int svn_error_clear (TYPE_2__*) ;
 TYPE_2__* svn_error_createf (int ,int *,int ,int ) ;
 TYPE_2__* svn_error_trace (TYPE_2__*) ;
 int svn_fs_fs__ensure_revision_exists (int ,TYPE_1__*,int *) ;
 int svn_fs_fs__is_packed_revprop (TYPE_1__*,int ) ;
 int svn_fs_fs__reset_revprop_cache (TYPE_1__*) ;

svn_error_t *
svn_fs_fs__get_revision_proplist(apr_hash_t **proplist_p,
                                 svn_fs_t *fs,
                                 svn_revnum_t rev,
                                 svn_boolean_t refresh,
                                 apr_pool_t *result_pool,
                                 apr_pool_t *scratch_pool)
{
  fs_fs_data_t *ffd = fs->fsap_data;




  svn_boolean_t populate_cache = !refresh;


  *proplist_p = ((void*)0);


  SVN_ERR(svn_fs_fs__ensure_revision_exists(rev, fs, scratch_pool));

  if (refresh)
    {

      svn_fs_fs__reset_revprop_cache(fs);
    }
  else
    {

      svn_boolean_t is_cached;
      pair_cache_key_t key;


      SVN_ERR(prepare_revprop_cache(fs, scratch_pool));
      key.revision = rev;
      key.second = ffd->revprop_prefix;


      SVN_ERR_W(svn_cache__get((void **) proplist_p, &is_cached,
                               ffd->revprop_cache, &key, result_pool),
                apr_psprintf(scratch_pool,
                             "Failed to parse revprops for r%ld.",
                             rev));
      if (is_cached)
        return SVN_NO_ERROR;
    }




  if (!svn_fs_fs__is_packed_revprop(fs, rev))
    {
      svn_error_t *err = read_non_packed_revprop(proplist_p, fs, rev,
                                                 populate_cache, result_pool);
      if (err)
        {
          if (!APR_STATUS_IS_ENOENT(err->apr_err)
              || ffd->format < SVN_FS_FS__MIN_PACKED_REVPROP_FORMAT)
            return svn_error_trace(err);

          svn_error_clear(err);
          *proplist_p = ((void*)0);
        }
    }




  if (ffd->format >= SVN_FS_FS__MIN_PACKED_REVPROP_FORMAT && !*proplist_p)
    {
      packed_revprops_t *revprops;
      SVN_ERR(read_pack_revprop(&revprops, fs, rev, FALSE, populate_cache,
                                result_pool));
      *proplist_p = revprops->properties;
    }


  if (!*proplist_p)
    return svn_error_createf(SVN_ERR_FS_NO_SUCH_REVISION, ((void*)0),
                             _("Could not read revprops for revision %ld"),
                             rev);

  return SVN_NO_ERROR;
}
