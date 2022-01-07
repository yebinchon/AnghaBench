
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_pool_t ;


 int * svn_io_detect_mimetype2 (char const**,char const*,int *,int *) ;

svn_error_t *
svn_io_detect_mimetype(const char **mimetype,
                       const char *file,
                       apr_pool_t *pool)
{
  return svn_io_detect_mimetype2(mimetype, file, ((void*)0), pool);
}
