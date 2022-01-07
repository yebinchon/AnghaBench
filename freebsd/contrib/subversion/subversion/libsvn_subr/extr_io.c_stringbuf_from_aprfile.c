
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {size_t len; scalar_t__* data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
struct TYPE_15__ {int apr_err; } ;
typedef TYPE_2__ svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef scalar_t__ apr_size_t ;
typedef int apr_pool_t ;
struct TYPE_16__ {scalar_t__ size; scalar_t__ fname; int member_0; } ;
typedef TYPE_3__ apr_finfo_t ;
typedef int apr_file_t ;


 int APR_FINFO_SIZE ;
 int APR_STATUS_IS_EOF (int ) ;
 int SVN_ERR (int ) ;
 TYPE_2__* SVN_NO_ERROR ;
 scalar_t__ SVN__STREAM_CHUNK_SIZE ;
 int apr_file_info_get (TYPE_3__*,int ,int *) ;
 char* apr_palloc (int *,scalar_t__) ;
 int svn_error_clear (TYPE_2__*) ;
 TYPE_2__* svn_error_trace (TYPE_2__*) ;
 TYPE_2__* svn_io_file_read (int *,char*,scalar_t__*,int *) ;
 int svn_io_file_read_full2 (int *,scalar_t__*,scalar_t__,size_t*,scalar_t__*,int *) ;
 int svn_stringbuf_appendbytes (TYPE_1__*,char*,scalar_t__) ;
 TYPE_1__* svn_stringbuf_create_ensure (scalar_t__,int *) ;

__attribute__((used)) static svn_error_t *
stringbuf_from_aprfile(svn_stringbuf_t **result,
                       const char *filename,
                       apr_file_t *file,
                       svn_boolean_t check_size,
                       apr_pool_t *pool)
{
  apr_size_t len;
  svn_error_t *err;
  svn_stringbuf_t *res = ((void*)0);
  apr_size_t res_initial_len = SVN__STREAM_CHUNK_SIZE;
  char *buf;



  if (check_size)
    {
      apr_finfo_t finfo = { 0 };



      if (! apr_file_info_get(&finfo, APR_FINFO_SIZE, file) && finfo.fname)
        {

          svn_boolean_t eof;
          res_initial_len = (apr_size_t)finfo.size;
          res = svn_stringbuf_create_ensure(res_initial_len, pool);
          SVN_ERR(svn_io_file_read_full2(file, res->data,
                                         res_initial_len, &res->len,
                                         &eof, pool));
          res->data[res->len] = 0;

          *result = res;
          return SVN_NO_ERROR;
        }
    }


  buf = apr_palloc(pool, SVN__STREAM_CHUNK_SIZE);
  res = svn_stringbuf_create_ensure(res_initial_len, pool);



  len = SVN__STREAM_CHUNK_SIZE;
  err = svn_io_file_read(file, buf, &len, pool);
  while (! err)
    {
      svn_stringbuf_appendbytes(res, buf, len);
      len = SVN__STREAM_CHUNK_SIZE;
      err = svn_io_file_read(file, buf, &len, pool);
    }


  if (err && !APR_STATUS_IS_EOF(err->apr_err))
    return svn_error_trace(err);
  svn_error_clear(err);

  *result = res;
  return SVN_NO_ERROR;
}
