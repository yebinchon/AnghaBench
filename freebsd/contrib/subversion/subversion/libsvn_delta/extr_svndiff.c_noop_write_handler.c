
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_size_t ;


 int * SVN_NO_ERROR ;

__attribute__((used)) static svn_error_t *
noop_write_handler(void *baton,
                   const char *buffer,
                   apr_size_t *len)
{
  return SVN_NO_ERROR;
}
