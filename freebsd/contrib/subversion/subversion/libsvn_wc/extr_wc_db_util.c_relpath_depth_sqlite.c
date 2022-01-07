
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_sqlite__value_t ;
typedef int svn_sqlite__context_t ;
typedef int svn_error_t ;
typedef int apr_int64_t ;


 int * SVN_NO_ERROR ;
 scalar_t__ SVN_SQLITE__TEXT ;
 int svn_sqlite__result_int64 (int *,int) ;
 int svn_sqlite__result_null (int *) ;
 char* svn_sqlite__value_text (int *) ;
 scalar_t__ svn_sqlite__value_type (int *) ;

__attribute__((used)) static svn_error_t *
relpath_depth_sqlite(svn_sqlite__context_t *sctx,
                     int argc,
                     svn_sqlite__value_t *values[],
                     void *baton)
{
  const char *path = ((void*)0);
  apr_int64_t depth;

  if (argc == 1 && svn_sqlite__value_type(values[0]) == SVN_SQLITE__TEXT)
    path = svn_sqlite__value_text(values[0]);
  if (!path)
    {
      svn_sqlite__result_null(sctx);
      return SVN_NO_ERROR;
    }

  depth = *path ? 1 : 0;
  while (*path)
    {
      if (*path == '/')
        ++depth;
      ++path;
    }
  svn_sqlite__result_int64(sctx, depth);

  return SVN_NO_ERROR;
}
