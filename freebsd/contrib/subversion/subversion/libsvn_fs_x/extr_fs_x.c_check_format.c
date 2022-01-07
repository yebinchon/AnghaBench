
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;


 int SVN_ERR_FS_UNSUPPORTED_FORMAT ;
 int SVN_FS_X__EXPERIMENTAL_FORMAT_NUMBER ;
 int SVN_FS_X__FORMAT_NUMBER ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int * svn_error_createf (int ,int *,int ,int,int,...) ;

__attribute__((used)) static svn_error_t *
check_format(int format)
{



  if (format == SVN_FS_X__FORMAT_NUMBER)
    return SVN_NO_ERROR;




  if (SVN_FS_X__EXPERIMENTAL_FORMAT_NUMBER >= format)
    return svn_error_createf(SVN_ERR_FS_UNSUPPORTED_FORMAT, ((void*)0),
      _("Unsupported experimental FSX format '%d' found; current format is '%d'"),
      format, SVN_FS_X__FORMAT_NUMBER);



  if (format <= SVN_FS_X__FORMAT_NUMBER)
    return SVN_NO_ERROR;

  return svn_error_createf(SVN_ERR_FS_UNSUPPORTED_FORMAT, ((void*)0),
     _("Expected FSX format between '%d' and '%d'; found format '%d'"),
     SVN_FS_X__EXPERIMENTAL_FORMAT_NUMBER + 1, SVN_FS_X__FORMAT_NUMBER,
     format);
}
