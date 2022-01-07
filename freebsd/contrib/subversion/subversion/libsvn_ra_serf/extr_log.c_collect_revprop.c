
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_string_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR_RA_DAV_MALFORMED_DATA ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int * apr_hash_pool_get (int *) ;
 scalar_t__ strcmp (char const*,char*) ;
 int * svn_base64_decode_string (int const*,int *) ;
 int * svn_error_createf (int ,int *,int ,char const*) ;
 int svn_hash_sets (int *,char const*,int const*) ;
 int * svn_string_dup (int const*,int *) ;

__attribute__((used)) static svn_error_t *
collect_revprop(apr_hash_t *revprops,
                const char *propname,
                const svn_string_t *cdata,
                const char *encoding)
{
  apr_pool_t *result_pool = apr_hash_pool_get(revprops);
  const svn_string_t *decoded;

  if (encoding)
    {


      if (strcmp(encoding, "base64") != 0)
        {
          return svn_error_createf(SVN_ERR_RA_DAV_MALFORMED_DATA, ((void*)0),
                                   _("Unsupported encoding '%s'"),
                                   encoding);
        }

      decoded = svn_base64_decode_string(cdata, result_pool);
    }
  else
    {
      decoded = svn_string_dup(cdata, result_pool);
    }


  svn_hash_sets(revprops, propname, decoded);

  return SVN_NO_ERROR;
}
