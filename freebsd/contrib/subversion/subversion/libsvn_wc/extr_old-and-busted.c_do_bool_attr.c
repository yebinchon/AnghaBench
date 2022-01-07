
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_hash_t ;


 int FALSE ;
 int SVN_ERR_ENTRY_ATTRIBUTE_INVALID ;
 int * SVN_NO_ERROR ;
 char const* SVN_WC_ENTRY_THIS_DIR ;
 int TRUE ;
 int _ (char*) ;
 scalar_t__ strcmp (char const*,char*) ;
 int * svn_error_createf (int ,int *,int ,char const*,char const*) ;
 char* svn_hash_gets (int *,char const*) ;

__attribute__((used)) static svn_error_t *
do_bool_attr(svn_boolean_t *entry_flag,
             apr_hash_t *atts, const char *attr_name,
             const char *entry_name)
{
  const char *str = svn_hash_gets(atts, attr_name);

  *entry_flag = FALSE;
  if (str)
    {
      if (strcmp(str, "true") == 0)
        *entry_flag = TRUE;
      else if (strcmp(str, "false") == 0 || strcmp(str, "") == 0)
        *entry_flag = FALSE;
      else
        return svn_error_createf
          (SVN_ERR_ENTRY_ATTRIBUTE_INVALID, ((void*)0),
           _("Entry '%s' has invalid '%s' value"),
           (entry_name ? entry_name : SVN_WC_ENTRY_THIS_DIR), attr_name);
    }
  return SVN_NO_ERROR;
}
