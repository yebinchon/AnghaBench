
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct TYPE_6__ {int packed_revprops; int filename; int folder; int revision; } ;
typedef TYPE_1__ packed_revprops_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_FS_CORRUPT ;
 int SVN_ERR_FS_NO_SUCH_REVISION ;
 int SVN_ERR_FS_PACKED_REVPROP_READ_FAILURE ;
 int SVN_FS_FS__RECOVERABLE_RETRY_COUNT ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 TYPE_1__* apr_pcalloc (int *,int) ;
 int get_revprop_packname (int *,TYPE_1__*,int *,int *) ;
 int * parse_packed_revprops (int *,TYPE_1__*,int ,int ,int *,int *) ;
 char* svn_dirent_join (int ,int ,int *) ;
 int * svn_error_createf (int ,int *,int ,int ) ;
 int svn_fs_fs__is_packed_revprop (int *,int ) ;
 int svn_fs_fs__try_stringbuf_from_file (int *,int *,char const*,int,int *) ;
 int svn_fs_fs__update_min_unpacked_rev (int *,int *) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;

__attribute__((used)) static svn_error_t *
read_pack_revprop(packed_revprops_t **revprops,
                  svn_fs_t *fs,
                  svn_revnum_t rev,
                  svn_boolean_t read_all,
                  svn_boolean_t populate_cache,
                  apr_pool_t *pool)
{
  apr_pool_t *iterpool = svn_pool_create(pool);
  svn_boolean_t missing = FALSE;
  svn_error_t *err;
  packed_revprops_t *result;
  int i;


  if (!svn_fs_fs__is_packed_revprop(fs, rev))
     SVN_ERR(svn_fs_fs__update_min_unpacked_rev(fs, iterpool));

  if (!svn_fs_fs__is_packed_revprop(fs, rev))
    return svn_error_createf(SVN_ERR_FS_NO_SUCH_REVISION, ((void*)0),
                              _("No such packed revision %ld"), rev);


  result = apr_pcalloc(pool, sizeof(*result));
  result->revision = rev;



  for (i = 0;
       i < SVN_FS_FS__RECOVERABLE_RETRY_COUNT && !result->packed_revprops;
       ++i)
    {
      const char *file_path;
      svn_pool_clear(iterpool);




      SVN_ERR(get_revprop_packname(fs, result, pool, iterpool));
      file_path = svn_dirent_join(result->folder,
                                   result->filename,
                                   iterpool);
      SVN_ERR(svn_fs_fs__try_stringbuf_from_file(&result->packed_revprops,
                                &missing,
                                file_path,
                                i + 1 < SVN_FS_FS__RECOVERABLE_RETRY_COUNT,
                                pool));
    }


  if (!result->packed_revprops)
    return svn_error_createf(SVN_ERR_FS_PACKED_REVPROP_READ_FAILURE, ((void*)0),
                  _("Failed to read revprop pack file for r%ld"), rev);


  err = parse_packed_revprops(fs, result, read_all, populate_cache, pool,
                              iterpool);
  svn_pool_destroy(iterpool);
  if (err)
    return svn_error_createf(SVN_ERR_FS_CORRUPT, err,
                  _("Revprop pack file for r%ld is corrupt"), rev);

  *revprops = result;

  return SVN_NO_ERROR;
}
