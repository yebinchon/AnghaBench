
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ save_len; scalar_t__ save_ptr; scalar_t__ save_pos; scalar_t__ sb_len; scalar_t__ sb_ptr; int buf; } ;
typedef TYPE_1__ svn_spillbuf_reader_t ;
typedef int svn_error_t ;
typedef scalar_t__ apr_size_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_INCORRECT_PARAMS ;
 int * SVN_NO_ERROR ;
 int memcpy (char*,scalar_t__,scalar_t__) ;
 int * svn_error_create (int ,int *,int *) ;
 int svn_spillbuf__read (int **,scalar_t__*,int ,int *) ;

svn_error_t *
svn_spillbuf__reader_read(apr_size_t *amt,
                          svn_spillbuf_reader_t *reader,
                          char *data,
                          apr_size_t len,
                          apr_pool_t *scratch_pool)
{
  if (len == 0)
    return svn_error_create(SVN_ERR_INCORRECT_PARAMS, ((void*)0), ((void*)0));

  *amt = 0;

  while (len > 0)
    {
      apr_size_t copy_amt;

      if (reader->save_len > 0)
        {


          if (len < reader->save_len)
            copy_amt = len;
          else
            copy_amt = reader->save_len;

          memcpy(data, reader->save_ptr + reader->save_pos, copy_amt);
          reader->save_pos += copy_amt;
          reader->save_len -= copy_amt;
        }
      else
        {




          if (reader->sb_len == 0)
            {
              SVN_ERR(svn_spillbuf__read(&reader->sb_ptr, &reader->sb_len,
                                         reader->buf,
                                         scratch_pool));



              if (reader->sb_ptr == ((void*)0))
                {


                  reader->sb_len = 0;
                  return SVN_NO_ERROR;
                }
            }

          if (len < reader->sb_len)
            copy_amt = len;
          else
            copy_amt = reader->sb_len;

          memcpy(data, reader->sb_ptr, copy_amt);
          reader->sb_ptr += copy_amt;
          reader->sb_len -= copy_amt;
        }

      data += copy_amt;
      len -= copy_amt;
      (*amt) += copy_amt;
    }

  return SVN_NO_ERROR;
}
