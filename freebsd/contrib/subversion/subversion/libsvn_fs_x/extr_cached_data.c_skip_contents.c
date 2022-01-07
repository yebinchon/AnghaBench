
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ svn_filesize_t ;
typedef int svn_error_t ;
struct TYPE_6__ {int revision; } ;
struct TYPE_7__ {int off; int md5_checksum_ctx; int scratch_pool; TYPE_3__* current_fulltext; int filehandle_pool; int len; TYPE_1__ fulltext_cache_key; } ;
typedef TYPE_2__ rep_read_baton_t ;
typedef scalar_t__ apr_size_t ;
typedef int apr_pool_t ;
struct TYPE_8__ {scalar_t__ len; char* data; } ;


 scalar_t__ MAX (scalar_t__,int ) ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 scalar_t__ SVN_IS_VALID_REVNUM (int ) ;
 int * SVN_NO_ERROR ;
 scalar_t__ SVN__STREAM_CHUNK_SIZE ;
 char* apr_palloc (int *,scalar_t__) ;
 int * get_contents_from_windows (TYPE_2__*,char*,scalar_t__*) ;
 int optimimal_allocation_size (scalar_t__) ;
 int svn_checksum_update (int ,char*,scalar_t__) ;
 int * svn_error_trace (int *) ;
 int * svn_pool_create (int ) ;
 int svn_pool_destroy (int *) ;
 TYPE_3__* svn_stringbuf_create_ensure (int ,int ) ;

__attribute__((used)) static svn_error_t *
skip_contents(rep_read_baton_t *baton,
              svn_filesize_t len)
{
  svn_error_t *err = SVN_NO_ERROR;


  if (SVN_IS_VALID_REVNUM(baton->fulltext_cache_key.revision))
    {
      char *buffer;
      svn_filesize_t to_alloc = MAX(len, baton->len);



      SVN_ERR_ASSERT((apr_size_t)to_alloc == to_alloc);


      baton->current_fulltext = svn_stringbuf_create_ensure(
                        optimimal_allocation_size((apr_size_t)to_alloc),
                        baton->filehandle_pool);



      baton->current_fulltext->len = (apr_size_t)len;
      baton->current_fulltext->data[(apr_size_t)len] = 0;

      buffer = baton->current_fulltext->data;
      while (len > 0 && !err)
        {
          apr_size_t to_read = (apr_size_t)len;
          err = get_contents_from_windows(baton, buffer, &to_read);
          len -= to_read;
          buffer += to_read;
        }



      if (!err)
        {
          SVN_ERR(svn_checksum_update(baton->md5_checksum_ctx,
                                      baton->current_fulltext->data,
                                      baton->current_fulltext->len));
          baton->off += baton->current_fulltext->len;
        }
    }
  else if (len > 0)
    {

      apr_pool_t *subpool = svn_pool_create(baton->scratch_pool);
      char *buffer = apr_palloc(subpool, SVN__STREAM_CHUNK_SIZE);

      while (len > 0 && !err)
        {
          apr_size_t to_read = len > SVN__STREAM_CHUNK_SIZE
                            ? SVN__STREAM_CHUNK_SIZE
                            : (apr_size_t)len;

          err = get_contents_from_windows(baton, buffer, &to_read);
          len -= to_read;



          if (!err)
            {
              SVN_ERR(svn_checksum_update(baton->md5_checksum_ctx,
                                          buffer, to_read));
              baton->off += to_read;
            }
        }

      svn_pool_destroy(subpool);
    }

  return svn_error_trace(err);
}
