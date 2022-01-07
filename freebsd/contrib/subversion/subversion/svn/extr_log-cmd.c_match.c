
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_membuf_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;


 scalar_t__ APR_SUCCESS ;
 int FALSE ;
 int TRUE ;
 scalar_t__ apr_fnmatch (char const*,char const*,int ) ;
 int strlen (char const*) ;
 int svn_error_clear (int *) ;
 int * svn_utf__xfrm (char const**,char const*,int ,int ,int ,int *) ;

__attribute__((used)) static svn_boolean_t
match(const char *pattern, const char *str, svn_membuf_t *buf)
{
  svn_error_t *err;

  err = svn_utf__xfrm(&str, str, strlen(str), TRUE, TRUE, buf);
  if (err)
    {

      svn_error_clear(err);
      return FALSE;
    }

  return apr_fnmatch(pattern, str, 0) == APR_SUCCESS;
}
