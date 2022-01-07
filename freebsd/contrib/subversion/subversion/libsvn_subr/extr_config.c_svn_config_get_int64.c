
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_config_t ;
typedef int apr_int64_t ;


 int APR_INT64_MAX ;
 int APR_INT64_MIN ;
 int * SVN_NO_ERROR ;
 int svn_config_get (int *,char const**,char const*,char const*,int *) ;
 int * svn_cstring_strtoi64 (int *,char const*,int ,int ,int) ;

svn_error_t *
svn_config_get_int64(svn_config_t *cfg,
                     apr_int64_t *valuep,
                     const char *section,
                     const char *option,
                     apr_int64_t default_value)
{
  const char *tmp_value;
  svn_config_get(cfg, &tmp_value, section, option, ((void*)0));
  if (tmp_value)
    return svn_cstring_strtoi64(valuep, tmp_value,
                                APR_INT64_MIN, APR_INT64_MAX, 10);

  *valuep = default_value;
  return SVN_NO_ERROR;
}
