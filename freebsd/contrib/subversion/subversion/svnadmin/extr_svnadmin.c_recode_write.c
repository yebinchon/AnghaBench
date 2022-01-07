
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
struct recode_write_baton {int pool; int out; } ;
typedef int apr_size_t ;


 int * svn_cmdline_fputs (char const*,int ,int ) ;
 int svn_pool_clear (int ) ;

__attribute__((used)) static svn_error_t *recode_write(void *baton,
                                 const char *data,
                                 apr_size_t *len)
{
  struct recode_write_baton *rwb = baton;
  svn_pool_clear(rwb->pool);
  return svn_cmdline_fputs(data, rwb->out, rwb->pool);
}
