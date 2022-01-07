
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc__db_t ;
typedef int svn_error_t ;
typedef int svn_cancel_func_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_WC_TRANSLATE_FROM_NF ;
 int TRUE ;
 int svn_io_file_rename2 (char const*,char const*,int ,int *) ;
 int svn_io_files_contents_same_p (int *,char const*,char const*,int *) ;
 int svn_wc__get_translate_info (int *,int *,int *,int *,int *,char const*,int *,int ,int *,int *) ;
 int svn_wc__internal_translated_file (char const**,char const*,int *,char const*,int ,int ,void*,int *,int *) ;
 int svn_wc__sync_flags_with_props (int *,int *,char const*,int *) ;

__attribute__((used)) static svn_error_t *
install_committed_file(svn_boolean_t *overwrote_working,
                       svn_wc__db_t *db,
                       const char *file_abspath,
                       svn_cancel_func_t cancel_func,
                       void *cancel_baton,
                       apr_pool_t *scratch_pool)
{
  svn_boolean_t same;
  const char *tmp_wfile;
  svn_boolean_t special;


  *overwrote_working = FALSE;
  {
    const char *tmp = file_abspath;






    SVN_ERR(svn_wc__internal_translated_file(&tmp_wfile, tmp, db,
                                             file_abspath,
                                             SVN_WC_TRANSLATE_FROM_NF,
                                             cancel_func, cancel_baton,
                                             scratch_pool, scratch_pool));
    SVN_ERR(svn_wc__get_translate_info(((void*)0), ((void*)0),
                                       ((void*)0),
                                       &special,
                                       db, file_abspath, ((void*)0), FALSE,
                                       scratch_pool, scratch_pool));

    if (! special && tmp != tmp_wfile)
      SVN_ERR(svn_io_files_contents_same_p(&same, tmp_wfile,
                                           file_abspath, scratch_pool));
    else
      same = TRUE;
  }

  if (! same)
    {
      SVN_ERR(svn_io_file_rename2(tmp_wfile, file_abspath, FALSE,
                                  scratch_pool));
      *overwrote_working = TRUE;
    }







  SVN_ERR(svn_wc__sync_flags_with_props(overwrote_working, db, file_abspath,
                                        scratch_pool));

  return SVN_NO_ERROR;
}
