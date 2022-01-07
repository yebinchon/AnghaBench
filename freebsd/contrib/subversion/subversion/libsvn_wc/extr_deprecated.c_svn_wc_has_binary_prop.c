
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_wc_adm_access_t ;
typedef int svn_wc__db_t ;
struct TYPE_3__ {int data; } ;
typedef TYPE_1__ svn_string_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_PROP_MIME_TYPE ;
 int TRUE ;
 int svn_dirent_get_absolute (char const**,char const*,int *) ;
 scalar_t__ svn_mime_type_is_binary (int ) ;
 int * svn_wc__adm_get_db (int *) ;
 int svn_wc__internal_propget (TYPE_1__ const**,int *,char const*,int ,int *,int *) ;

svn_error_t *
svn_wc_has_binary_prop(svn_boolean_t *has_binary_prop,
                       const char *path,
                       svn_wc_adm_access_t *adm_access,
                       apr_pool_t *pool)
{
  svn_wc__db_t *db = svn_wc__adm_get_db(adm_access);
  const char *local_abspath;
  const svn_string_t *value;

  SVN_ERR(svn_dirent_get_absolute(&local_abspath, path, pool));

  SVN_ERR(svn_wc__internal_propget(&value, db, local_abspath,
                                   SVN_PROP_MIME_TYPE,
                                   pool, pool));

  if (value && (svn_mime_type_is_binary(value->data)))
    *has_binary_prop = TRUE;
  else
    *has_binary_prop = FALSE;

  return SVN_NO_ERROR;
}
