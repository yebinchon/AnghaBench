
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int svn_stringbuf_t ;
typedef int svn_revnum_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct TYPE_7__ {int revprops; int entry; int revision; } ;
typedef TYPE_1__ packed_revprops_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_FS_NO_SUCH_REVISION ;
 int SVN_ERR_FS_PACKED_REVPROP_READ_FAILURE ;
 int SVN_ERR_W (int ,int ) ;
 int SVN_FS_X__RECOVERABLE_RETRY_COUNT ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 TYPE_1__* apr_pcalloc (int *,int) ;
 int apr_psprintf (int *,char*,int ) ;
 char* get_revprop_pack_filepath (TYPE_1__*,int *,int *) ;
 int get_revprop_packname (int *,TYPE_1__*,int *,int *) ;
 scalar_t__ has_revprop_cache (int *,int *) ;
 int parse_packed_revprops (int *,TYPE_1__*,int *,int ,int *,int *) ;
 int read_revprop_generation (int *,int *) ;
 int * svn_error_createf (int ,int *,int ,int ) ;
 int svn_fs_x__is_packed_revprop (int *,int ) ;
 int svn_fs_x__try_stringbuf_from_file (int **,int *,char const*,int,int *) ;
 int svn_fs_x__update_min_unpacked_rev (int *,int *) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;

__attribute__((used)) static svn_error_t *
read_pack_revprop(packed_revprops_t **revprops,
                  svn_fs_t *fs,
                  svn_revnum_t rev,
                  svn_boolean_t read_all,
                  apr_pool_t *result_pool,
                  apr_pool_t *scratch_pool)
{
  apr_pool_t *iterpool = svn_pool_create(scratch_pool);
  svn_boolean_t missing = FALSE;
  packed_revprops_t *result;
  int i;


  if (!svn_fs_x__is_packed_revprop(fs, rev))
     SVN_ERR(svn_fs_x__update_min_unpacked_rev(fs, iterpool));

  if (!svn_fs_x__is_packed_revprop(fs, rev))
    return svn_error_createf(SVN_ERR_FS_NO_SUCH_REVISION, ((void*)0),
                              _("No such packed revision %ld"), rev);


  result = apr_pcalloc(result_pool, sizeof(*result));
  result->revision = rev;



  for (i = 0; i < SVN_FS_X__RECOVERABLE_RETRY_COUNT; ++i)
    {
      const char *file_path;
      svn_stringbuf_t *contents = ((void*)0);

      svn_pool_clear(iterpool);




      SVN_ERR(get_revprop_packname(fs, result, result_pool, iterpool));
      file_path = get_revprop_pack_filepath(result, &result->entry,
                                            iterpool);
      SVN_ERR(svn_fs_x__try_stringbuf_from_file(&contents,
                                &missing,
                                file_path,
                                i + 1 < SVN_FS_X__RECOVERABLE_RETRY_COUNT,
                                iterpool));

      if (contents)
        {
          SVN_ERR_W(parse_packed_revprops(fs, result, contents, read_all,
                                          result_pool, iterpool),
                    apr_psprintf(iterpool,
                                 "Revprop pack file for r%ld is corrupt",
                                 rev));
          break;
        }






      if (missing && has_revprop_cache(fs, iterpool))
        SVN_ERR(read_revprop_generation(fs, iterpool));
    }


  if (!result->revprops)
    return svn_error_createf(SVN_ERR_FS_PACKED_REVPROP_READ_FAILURE, ((void*)0),
                  _("Failed to read revprop pack file for r%ld"), rev);

  *revprops = result;

  return SVN_NO_ERROR;
}
