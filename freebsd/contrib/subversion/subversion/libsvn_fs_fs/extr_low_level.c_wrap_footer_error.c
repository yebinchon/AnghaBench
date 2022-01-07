
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_error_t ;


 int * SVN_NO_ERROR ;
 int * svn_error_quick_wrapf (int *,char const*,int ) ;

__attribute__((used)) static svn_error_t *
wrap_footer_error(svn_error_t *err,
                  const char *message,
                  svn_revnum_t rev)
{
  if (err)
    return svn_error_quick_wrapf(err, message, rev);

  return SVN_NO_ERROR;
}
