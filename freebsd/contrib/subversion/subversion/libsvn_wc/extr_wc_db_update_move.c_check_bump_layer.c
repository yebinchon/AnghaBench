
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_node_kind_t ;
typedef int svn_error_t ;
typedef int svn_depth_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR_MALFUNCTION () ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int relpath_depth (char const*) ;



 int svn_depth_infinity ;
 int svn_node_file ;
 char* svn_relpath_skip_ancestor (char const*,char const*) ;

__attribute__((used)) static svn_error_t *
check_bump_layer(svn_boolean_t *skip,
                 svn_depth_t *src_depth,
                 const char *bump_root,
                 svn_depth_t bump_depth,
                 const char *src_relpath,
                 svn_node_kind_t src_kind,
                 apr_pool_t *scratch_pool)
{
  const char *relpath;

  *skip = FALSE;
  *src_depth = bump_depth;

  relpath = svn_relpath_skip_ancestor(bump_root, src_relpath);

  if (!relpath)
    *skip = TRUE;

  if (bump_depth == svn_depth_infinity)
    return SVN_NO_ERROR;

  if (relpath && *relpath == '\0')
    return SVN_NO_ERROR;

  switch (bump_depth)
    {
      case 130:
        *skip = TRUE;
        break;

      case 129:
        if (src_kind != svn_node_file)
          {
            *skip = TRUE;
            break;
          }

      case 128:
        if (!relpath || relpath_depth(relpath) > 1)
          *skip = TRUE;

        *src_depth = 130;
        break;
      default:
        SVN_ERR_MALFUNCTION();
    }

  return SVN_NO_ERROR;
}
