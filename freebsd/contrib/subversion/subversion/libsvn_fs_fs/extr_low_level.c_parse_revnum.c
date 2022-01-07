
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_error_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_FS_CORRUPT ;
 int SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int * svn_error_create (int ,int *,int ) ;
 int svn_revnum_parse (int *,char const*,char const**) ;

__attribute__((used)) static svn_error_t *
parse_revnum(svn_revnum_t *rev,
             const char **text)
{
  const char *string = *text;
  if ((string[0] == '-') && (string[1] == '1'))
    {
      *rev = SVN_INVALID_REVNUM;
      string += 2;
    }
  else
    {
      SVN_ERR(svn_revnum_parse(rev, string, &string));
    }

  if (*string == ' ')
    ++string;
  else if (*string != '\0')
    return svn_error_create(SVN_ERR_FS_CORRUPT, ((void*)0),
                            _("Invalid character in revision number"));

  *text = string;
  return SVN_NO_ERROR;
}
