
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_tristate_t ;
typedef int svn_error_t ;
typedef int apr_uint64_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_cstring_strtoui64 (int*,char const*,int ,int,int) ;
 int svn_tristate_false ;
 int svn_tristate_true ;
 int svn_tristate_unknown ;

__attribute__((used)) static svn_error_t *
parse_git_mode_bits(svn_tristate_t *executable_p,
                    svn_tristate_t *symlink_p,
                    const char *mode_str)
{
  apr_uint64_t mode;
  SVN_ERR(svn_cstring_strtoui64(&mode, mode_str,
                                0 ,
                                0777777 ,
                                010 ));
  switch (mode & 0777)
    {
      case 0644:
        *executable_p = svn_tristate_false;
        break;

      case 0755:
        *executable_p = svn_tristate_true;
        break;

      default:

        *executable_p = svn_tristate_unknown;
        break;
    }

  switch (mode & 0170000 )
    {
      case 0120000:
        *symlink_p = svn_tristate_true;
        break;

      case 0100000:
      case 0040000:
        *symlink_p = svn_tristate_false;
        break;

      default:


        *symlink_p = svn_tristate_unknown;
        break;
    }

  return SVN_NO_ERROR;
}
