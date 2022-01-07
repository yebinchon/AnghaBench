
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int data; int len; } ;
typedef TYPE_1__ svn_string_t ;
typedef scalar_t__ svn_prop_kind_t ;
typedef int svn_error_t ;
typedef int apr_time_t ;
typedef int apr_pool_t ;


 int SVN_ERR_BAD_PROPERTY_VALUE ;
 int SVN_ERR_BAD_PROPERTY_VALUE_EOL ;
 int SVN_ERR_REPOS_BAD_ARGS ;
 int * SVN_NO_ERROR ;
 int SVN_PROP_REVISION_DATE ;
 int * _ (char*) ;
 int * strchr (int ,char) ;
 scalar_t__ strcmp (char const*,int ) ;
 int * svn_error_create (int ,int *,int *) ;
 int * svn_error_createf (int ,int *,int *,char const*) ;
 scalar_t__ svn_prop_is_svn_prop (char const*) ;
 scalar_t__ svn_prop_needs_translation (char const*) ;
 scalar_t__ svn_prop_regular_kind ;
 scalar_t__ svn_property_kind2 (char const*) ;
 int * svn_time_from_cstring (int *,int ,int *) ;
 int svn_utf__is_valid (int ,int ) ;

svn_error_t *
svn_repos__validate_prop(const char *name,
                         const svn_string_t *value,
                         apr_pool_t *pool)
{
  svn_prop_kind_t kind = svn_property_kind2(name);


  if (value == ((void*)0))
    return SVN_NO_ERROR;


  if (kind != svn_prop_regular_kind)
    return svn_error_createf
      (SVN_ERR_REPOS_BAD_ARGS, ((void*)0),
       _("Storage of non-regular property '%s' is disallowed through the "
         "repository interface, and could indicate a bug in your client"),
       name);


  if (svn_prop_is_svn_prop(name) && value != ((void*)0))
    {


      if (svn_prop_needs_translation(name))
        {
          if (!svn_utf__is_valid(value->data, value->len))
            {
              return svn_error_createf
                (SVN_ERR_BAD_PROPERTY_VALUE, ((void*)0),
                 _("Cannot accept '%s' property because it is not encoded in "
                   "UTF-8"), name);
            }



          if (strchr(value->data, '\r') != ((void*)0))
            {
              svn_error_t *err = svn_error_createf
                (SVN_ERR_BAD_PROPERTY_VALUE_EOL, ((void*)0),
                 _("Cannot accept non-LF line endings in '%s' property"),
                   name);

              return svn_error_create(SVN_ERR_BAD_PROPERTY_VALUE, err,
                                      _("Invalid property value"));
            }
        }


      if (strcmp(name, SVN_PROP_REVISION_DATE) == 0)
        {
          apr_time_t temp;
          svn_error_t *err;

          err = svn_time_from_cstring(&temp, value->data, pool);
          if (err)
            return svn_error_create(SVN_ERR_BAD_PROPERTY_VALUE,
                                    err, ((void*)0));
        }
    }

  return SVN_NO_ERROR;
}
