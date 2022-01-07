
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ svn_revnum_t ;
typedef int svn_error_t ;
typedef scalar_t__ apr_uint32_t ;


 scalar_t__ APR_INT32_MAX ;
 int SVN_ERR_REVNUM_PARSE_FAILURE ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int svn__strtoul (char const*,char const**) ;
 int * svn_error_createf (int ,int *,int ,char const*) ;

svn_error_t *
svn_revnum_parse(svn_revnum_t *rev,
                 const char *str,
                 const char **endptr)
{
  const char *end;

  svn_revnum_t result = (svn_revnum_t)svn__strtoul(str, &end);

  if (endptr)
    *endptr = str;

  if (str == end)
    return svn_error_createf
              (SVN_ERR_REVNUM_PARSE_FAILURE, ((void*)0),
               *str == '-' ? _("Negative revision number found parsing '%s'")
                           : _("Invalid revision number found parsing '%s'"),
               str);



  if (str + 10 <= end)
    {

      if (str + 10 < end)
        return svn_error_createf
                  (SVN_ERR_REVNUM_PARSE_FAILURE, ((void*)0),
                  _("Revision number longer than 10 digits '%s'"), str);


      if (*str > '2' || (apr_uint32_t)result > APR_INT32_MAX)
        return svn_error_createf
                  (SVN_ERR_REVNUM_PARSE_FAILURE, ((void*)0),
                  _("Revision number too large '%s'"), str);
    }

  if (endptr)
    *endptr = end;

  *rev = result;

  return SVN_NO_ERROR;
}
