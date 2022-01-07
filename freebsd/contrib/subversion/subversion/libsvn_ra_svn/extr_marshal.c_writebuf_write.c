
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int write_pos; scalar_t__ write_buf; } ;
typedef TYPE_1__ svn_ra_svn_conn_t ;
typedef int svn_error_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int memcpy (scalar_t__,char const*,int) ;
 int writebuf_flush (TYPE_1__*,int *) ;
 int * writebuf_output (TYPE_1__*,int *,char const*,int) ;

__attribute__((used)) static svn_error_t *writebuf_write(svn_ra_svn_conn_t *conn, apr_pool_t *pool,
                                   const char *data, apr_size_t len)
{

  if (len >= sizeof(conn->write_buf) / 2)
    {
      if (conn->write_pos > 0)
        SVN_ERR(writebuf_flush(conn, pool));

      return writebuf_output(conn, pool, data, len);
    }


  if (conn->write_pos + len > sizeof(conn->write_buf))
    SVN_ERR(writebuf_flush(conn, pool));


  memcpy(conn->write_buf + conn->write_pos, data, len);
  conn->write_pos += len;

  return SVN_NO_ERROR;
}
