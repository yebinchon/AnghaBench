
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc__db_t ;
typedef scalar_t__ svn_subst_eol_style_t ;
typedef int svn_stream_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_uint32_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_file_t ;


 int APR_BUFFERED ;
 int APR_CREATE ;
 int APR_OS_DEFAULT ;
 int APR_WRITE ;
 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int SVN_ERR_IO_UNKNOWN_EOL ;
 int * SVN_NO_ERROR ;
 char* SVN_SUBST_NATIVE_EOL_STR ;
 int SVN_WC_TRANSLATE_FORCE_EOL_REPAIR ;
 int SVN_WC_TRANSLATE_TO_NF ;
 int TRUE ;
 int svn_dirent_is_absolute (char const*) ;
 int * svn_error_create (int ,int *,int *) ;
 int svn_io_file_open (int **,char const*,int,int ,int *) ;
 int * svn_stream_from_aprfile2 (int *,int,int *) ;
 int svn_stream_open_readonly (int **,char const*,int *,int *) ;
 int * svn_subst_create_specialfile (int **,char const*,int *,int *) ;
 scalar_t__ svn_subst_eol_style_fixed ;
 scalar_t__ svn_subst_eol_style_native ;
 scalar_t__ svn_subst_eol_style_none ;
 int * svn_subst_read_specialfile (int **,char const*,int *,int *) ;
 int * svn_subst_stream_translated (int *,char const*,int,int *,int,int *) ;
 scalar_t__ svn_subst_translation_required (scalar_t__,char const*,int *,int,int) ;
 int svn_wc__get_translate_info (scalar_t__*,char const**,int **,int*,int *,char const*,int *,int,int *,int *) ;

svn_error_t *
svn_wc__internal_translated_stream(svn_stream_t **stream,
                                   svn_wc__db_t *db,
                                   const char *local_abspath,
                                   const char *versioned_abspath,
                                   apr_uint32_t flags,
                                   apr_pool_t *result_pool,
                                   apr_pool_t *scratch_pool)
{
  svn_boolean_t special;
  svn_boolean_t to_nf = flags & SVN_WC_TRANSLATE_TO_NF;
  svn_subst_eol_style_t style;
  const char *eol;
  apr_hash_t *keywords;
  svn_boolean_t repair_forced = flags & SVN_WC_TRANSLATE_FORCE_EOL_REPAIR;

  SVN_ERR_ASSERT(svn_dirent_is_absolute(local_abspath));
  SVN_ERR_ASSERT(svn_dirent_is_absolute(versioned_abspath));

  SVN_ERR(svn_wc__get_translate_info(&style, &eol,
                                     &keywords,
                                     &special,
                                     db, versioned_abspath, ((void*)0), FALSE,
                                     scratch_pool, scratch_pool));

  if (special)
    {
      if (to_nf)
        return svn_subst_read_specialfile(stream, local_abspath, result_pool,
                                          scratch_pool);

      return svn_subst_create_specialfile(stream, local_abspath, result_pool,
                                          scratch_pool);
    }

  if (to_nf)
    SVN_ERR(svn_stream_open_readonly(stream, local_abspath, result_pool,
                                     scratch_pool));
  else
    {
      apr_file_t *file;



      SVN_ERR(svn_io_file_open(&file, local_abspath,
                               APR_CREATE | APR_WRITE | APR_BUFFERED,
                               APR_OS_DEFAULT, result_pool));
      *stream = svn_stream_from_aprfile2(file, FALSE, result_pool);
    }

  if (svn_subst_translation_required(style, eol, keywords, special, TRUE))
    {
      if (to_nf)
        {
          if (style == svn_subst_eol_style_native)
            eol = SVN_SUBST_NATIVE_EOL_STR;
          else if (style == svn_subst_eol_style_fixed)
            repair_forced = TRUE;
          else if (style != svn_subst_eol_style_none)
            return svn_error_create(SVN_ERR_IO_UNKNOWN_EOL, ((void*)0), ((void*)0));


          *stream = svn_subst_stream_translated(*stream,
                                                eol,
                                                repair_forced,
                                                keywords,
                                                FALSE ,
                                                result_pool);




        }
      else
        {
          *stream = svn_subst_stream_translated(*stream, eol, TRUE,
                                                keywords, TRUE, result_pool);




        }
    }

  return SVN_NO_ERROR;
}
