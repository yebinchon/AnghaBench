
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc__db_t ;
typedef scalar_t__ svn_subst_eol_style_t ;
typedef int svn_stream_t ;
typedef scalar_t__ svn_filesize_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_file_t ;


 int APR_OS_DEFAULT ;
 int APR_READ ;
 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int SVN_ERR_IO_UNKNOWN_EOL ;
 int * SVN_NO_ERROR ;
 char* SVN_SUBST_NATIVE_EOL_STR ;
 int TRUE ;
 int svn_dirent_is_absolute (char const*) ;
 int * svn_error_create (int ,int ,int *) ;
 int * svn_error_trace (int ) ;
 int svn_io_file_open (int **,char const*,int ,int ,int *) ;
 int svn_stream_close (int *) ;
 int svn_stream_contents_same2 (int*,int *,int *,int *) ;
 int * svn_stream_from_aprfile2 (int *,int,int *) ;
 scalar_t__ svn_subst_eol_style_fixed ;
 scalar_t__ svn_subst_eol_style_native ;
 scalar_t__ svn_subst_eol_style_none ;
 int svn_subst_read_specialfile (int **,char const*,int *,int *) ;
 int * svn_subst_stream_translated (int *,char const*,int,int *,int,int *) ;
 int svn_subst_translation_required (scalar_t__,char const*,int *,int,int) ;
 int svn_wc__get_translate_info (scalar_t__*,char const**,int **,int*,int *,char const*,int *,int,int *,int *) ;

__attribute__((used)) static svn_error_t *
compare_and_verify(svn_boolean_t *modified_p,
                   svn_wc__db_t *db,
                   const char *versioned_file_abspath,
                   svn_filesize_t versioned_file_size,
                   svn_stream_t *pristine_stream,
                   svn_filesize_t pristine_size,
                   svn_boolean_t has_props,
                   svn_boolean_t props_mod,
                   svn_boolean_t exact_comparison,
                   apr_pool_t *scratch_pool)
{
  svn_boolean_t same;
  svn_subst_eol_style_t eol_style;
  const char *eol_str;
  apr_hash_t *keywords;
  svn_boolean_t special = FALSE;
  svn_boolean_t need_translation;
  svn_stream_t *v_stream;

  SVN_ERR_ASSERT(svn_dirent_is_absolute(versioned_file_abspath));

  if (props_mod)
    has_props = TRUE;

  if (has_props)
    {
      SVN_ERR(svn_wc__get_translate_info(&eol_style, &eol_str,
                                         &keywords,
                                         &special,
                                         db, versioned_file_abspath, ((void*)0),
                                         !exact_comparison,
                                         scratch_pool, scratch_pool));

      need_translation = svn_subst_translation_required(eol_style, eol_str,
                                                        keywords, special,
                                                        TRUE);
    }
  else
    need_translation = FALSE;

  if (! need_translation
      && (versioned_file_size != pristine_size))
    {
      *modified_p = TRUE;


      return svn_error_trace(svn_stream_close(pristine_stream));
    }




  if (special && need_translation)
    {
      SVN_ERR(svn_subst_read_specialfile(&v_stream, versioned_file_abspath,
                                          scratch_pool, scratch_pool));
    }
  else
    {


      apr_file_t *file;
      SVN_ERR(svn_io_file_open(&file, versioned_file_abspath, APR_READ,
                               APR_OS_DEFAULT, scratch_pool));
      v_stream = svn_stream_from_aprfile2(file, FALSE, scratch_pool);

      if (need_translation)
        {
          if (!exact_comparison)
            {
              if (eol_style == svn_subst_eol_style_native)
                eol_str = SVN_SUBST_NATIVE_EOL_STR;
              else if (eol_style != svn_subst_eol_style_fixed
                       && eol_style != svn_subst_eol_style_none)
                return svn_error_create(SVN_ERR_IO_UNKNOWN_EOL,
                                        svn_stream_close(v_stream), ((void*)0));



              v_stream = svn_subst_stream_translated(v_stream,
                                                     eol_str,
                                                     TRUE ,
                                                     keywords,
                                                     FALSE ,
                                                     scratch_pool);
            }
          else
            {


              pristine_stream = svn_subst_stream_translated(pristine_stream,
                                                            eol_str, FALSE,
                                                            keywords, TRUE,
                                                            scratch_pool);
            }
        }
    }

  SVN_ERR(svn_stream_contents_same2(&same, pristine_stream, v_stream,
                                    scratch_pool));

  *modified_p = (! same);

  return SVN_NO_ERROR;
}
