
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ svn_linenum_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef scalar_t__ apr_uint64_t ;


 int FALSE ;
 int SVN_LINENUM_MAX_VALUE ;
 int TRUE ;
 int * svn_cstring_strtoui64 (scalar_t__*,char const*,int ,int ,int) ;
 int svn_error_clear (int *) ;

__attribute__((used)) static svn_boolean_t
parse_offset(svn_linenum_t *offset, const char *number)
{
  svn_error_t *err;
  apr_uint64_t val;

  err = svn_cstring_strtoui64(&val, number, 0, SVN_LINENUM_MAX_VALUE, 10);
  if (err)
    {
      svn_error_clear(err);
      return FALSE;
    }

  *offset = (svn_linenum_t)val;

  return TRUE;
}
