
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ svn_subst_eol_style_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int FALSE ;
 int SVN_ERR_IO_UNKNOWN_EOL ;
 char* SVN_SUBST_NATIVE_EOL_STR ;
 int * svn_error_create (int ,int *,int *) ;
 int * svn_error_trace (int ) ;
 int svn_subst_copy_and_translate3 (char const*,char const*,char const*,int,int *,int ,scalar_t__,int *) ;
 scalar_t__ svn_subst_eol_style_fixed ;
 scalar_t__ svn_subst_eol_style_native ;
 scalar_t__ svn_subst_eol_style_none ;

svn_error_t *
svn_subst_translate_to_normal_form(const char *src,
                                   const char *dst,
                                   svn_subst_eol_style_t eol_style,
                                   const char *eol_str,
                                   svn_boolean_t always_repair_eols,
                                   apr_hash_t *keywords,
                                   svn_boolean_t special,
                                   apr_pool_t *pool)
{

  if (eol_style == svn_subst_eol_style_native)
    eol_str = SVN_SUBST_NATIVE_EOL_STR;
  else if (! (eol_style == svn_subst_eol_style_fixed
              || eol_style == svn_subst_eol_style_none))
    return svn_error_create(SVN_ERR_IO_UNKNOWN_EOL, ((void*)0), ((void*)0));

  return svn_error_trace(svn_subst_copy_and_translate3(
                           src, dst, eol_str,
                           eol_style == svn_subst_eol_style_fixed
                             || always_repair_eols,
                           keywords,
                           FALSE ,
                           special,
                           pool));
}
