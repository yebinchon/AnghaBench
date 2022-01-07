
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_spillbuf_reader_t ;
typedef int svn_error_t ;
typedef int svn_depth_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_REPOS_BAD_REVISION_REPORT ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int svn_depth_empty ;
 int svn_depth_exclude ;
 int svn_depth_files ;
 int svn_depth_immediates ;
 int * svn_error_createf (int ,int *,int ,char,char const*) ;
 int svn_spillbuf__reader_getc (char*,int *,int *) ;

__attribute__((used)) static svn_error_t *
read_depth(svn_depth_t *depth, svn_spillbuf_reader_t *reader, const char *path,
           apr_pool_t *pool)
{
  char c;

  SVN_ERR(svn_spillbuf__reader_getc(&c, reader, pool));
  switch (c)
    {
    case 'X':
      *depth = svn_depth_exclude;
      break;
    case 'E':
      *depth = svn_depth_empty;
      break;
    case 'F':
      *depth = svn_depth_files;
      break;
    case 'M':
      *depth = svn_depth_immediates;
      break;




    default:
      return svn_error_createf(SVN_ERR_REPOS_BAD_REVISION_REPORT, ((void*)0),
                               _("Invalid depth (%c) for path '%s'"), c, path);
    }

  return SVN_NO_ERROR;
}
