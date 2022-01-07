
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
struct spillbuf_baton {int scratch_pool; int reader; } ;
typedef int apr_size_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_pool_clear (int ) ;
 int svn_spillbuf__reader_write (int ,char const*,int ,int ) ;

__attribute__((used)) static svn_error_t *
write_handler_spillbuf(void *baton, const char *data, apr_size_t *len)
{
  struct spillbuf_baton *sb = baton;

  SVN_ERR(svn_spillbuf__reader_write(sb->reader, data, *len,
                                     sb->scratch_pool));

  svn_pool_clear(sb->scratch_pool);
  return SVN_NO_ERROR;
}
